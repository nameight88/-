package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaclass.dao.PropertyDaoImpl;
import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

@Service("propertyService")
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	private PropertyDaoImpl propertyDao;

	// 매물 등록 트렌잭션 도전
	@Transactional
	@Override
	public void propertyInsert(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {
		propertyDao.insertProperty(vo,optionVO,securityVO);

	}

	@Transactional
	@Override
	public void updateProperty(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {
		propertyDao.updateProperty(vo, optionVO, securityVO);

	}

	@Override
	public void deleteProperty(String propertyId) {
		propertyDao.deleteProperty(propertyId);


	}

	@Override
	public List<PropertyVO> getPropertyList(PropertyVO vo) {
		return propertyDao.getPropertyList(vo);
	}


	@Override
	public List<PropertyVO> searchMap(HashMap map) {
		// TODO Auto-generated method stub
		return propertyDao.searchMap(map);
	}

	
	// 매물 상세 조회
	
	@Override
	public PropertyVO getProperty(String propertyId) {
		return propertyDao.getProperty(propertyId);
	}


	@Override
	public PropertyOptionVO getPropertyOption(String propertyId) {
		return propertyDao.getPropertyOption(propertyId);
	}


	@Override
	public PropertySecurityVO getPropertySecurity(String propertyId) {
		return propertyDao.getPropertySecurity(propertyId);
	}

	@Override
	public List<PropertyVO> getPropertyMapList(PropertyVO vo) {
		
		return propertyDao.getPropertyMapList(vo);
	}


	


}
