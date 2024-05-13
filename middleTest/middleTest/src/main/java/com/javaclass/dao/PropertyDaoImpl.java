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
	public void insertProperty(PropertyVO vo) {
		mybatis.insert("PropertyDao.insertProperty", vo);

	}

	@Override
	public void updateProperty(String propertyId) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteProperty(PropertyVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<PropertyVO> getPropertyList(PropertyVO vo) {
		System.out.println("MYbatis getPropertyList() 호출");
		List<PropertyVO> result = mybatis.selectList("PropertyDao.getPropertyList", vo);

		return result;
	}

	@Override
	public PropertyVO getProperty(String propertyId) {
		System.out.println("MYbatis getProperty() 호출");
		PropertyVO vo = mybatis.selectOne("PropertyDao.getProperty", propertyId);
		return vo;
	}

	@Override
	public List<PropertyVO> searchMap(HashMap map) {
		System.out.println("MYbatis searchMap() 호출");
		List<PropertyVO> result = mybatis.selectList("PropertyDao.searchMap", map);
		return result;
	}

	@Override
	public void insertOption(PropertyOptionVO optionVO) {
		mybatis.insert("PropertyDao.insertOption", optionVO);

	}

	@Override
	public void insertSecurity(PropertySecurityVO securityVO) {
		mybatis.insert("PropertyDao.insertSecurity", securityVO);

	}

}
