package com.javaclass.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

@Repository("propertyDao")
public class PropertyDaoImpl implements PropertyDao {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertProperty(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {
		//System.out.println(map.values());
		mybatis.insert("PropertyDao.insertProperty", vo);
		mybatis.insert("PropertyDao.insertOption", optionVO);
		mybatis.insert("PropertyDao.insertSecurity", securityVO);

	}

	@Override
	public void updateProperty(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {
		mybatis.update("PropertyDao.updateProperty", vo);
		mybatis.update("PropertyDao.updateOption", optionVO);
		mybatis.update("PropertyDao.updateSecurity", securityVO);

	}

	// 매물 삭제
	@Override
	public void deleteProperty(String propertyId) {
		System.out.println("MYbatis deleteProperty() 호출");
		mybatis.delete("PropertyDao.deleteProperty",propertyId);
		mybatis.delete("PropertyDao.deleteSecurity",propertyId);
		mybatis.delete("PropertyDao.deleteOption",propertyId);
	}

	@Override
	public List<PropertyVO> getPropertyList(PropertyVO vo) {
		System.out.println("MYbatis getPropertyList() 호출");
		List<PropertyVO> result = mybatis.selectList("PropertyDao.getPropertyList", vo);

		return result;
	}

	

	@Override
	public List<PropertyVO> searchMap(HashMap map) {
		System.out.println("MYbatis searchMap() 호출");
		List<PropertyVO> result = mybatis.selectList("PropertyDao.searchMap", map);
		return result;
	}

	@Override
	public PropertyVO getProperty(String propertyId) {
		System.out.println("MYbatis getProperty() 호출");
		PropertyVO vo = mybatis.selectOne("PropertyDao.getProperty", propertyId);
		return vo;
	}
	
	@Override
	public PropertyOptionVO getPropertyOption(String propertyId) {
		System.out.println("MYbatis getPropertyOption() 호출");
		PropertyOptionVO optionVO = mybatis.selectOne("PropertyDao.getPropertyOption", propertyId);
		System.out.println(optionVO.toString());
		return optionVO;
	}

	@Override
	public PropertySecurityVO getPropertySecurity(String propertyId) {
		System.out.println("MYbatis getPropertySecurity() 호출");
		PropertySecurityVO securityVO  = mybatis.selectOne("PropertyDao.getPropertySecurity", propertyId);
		System.out.println(securityVO.toString());
		return securityVO;
	}

	@Override
	public List<PropertyVO> getPropertyMapList(PropertyVO vo) {
		System.out.println("MYbatis getPropertyList() 호출");
		List<PropertyVO> result = mybatis.selectList("PropertyDao.getPropertyMapList", vo);

		return result;
	}


}
