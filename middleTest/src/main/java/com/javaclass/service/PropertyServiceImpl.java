package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.PropertyDaoImpl;
import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

@Service("propertyService")
public class PropertyServiceImpl implements PropertyService {

	@Autowired
	private PropertyDaoImpl propertyDao;

	@Override
	public void insertProperty(PropertyVO vo) {
		propertyDao.insertProperty(vo);

	}

	@Override
	public void updateProperty(String propertyId) {

	}

	@Override
	public void deleteProperty(PropertyVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<PropertyVO> getPropertyList(PropertyVO vo) {
		return propertyDao.getPropertyList(vo);
	}

	@Override
	public PropertyVO getProperty(String propertyId) {
		return propertyDao.getProperty(propertyId);
	}

	@Override
	public List<PropertyVO> searchMap(HashMap map) {
		// TODO Auto-generated method stub
		return propertyDao.searchMap(map);
	}

	@Override
	public void insertOption(PropertyOptionVO optionVO) {
		propertyDao.insertOption(optionVO);

	}

	@Override
	public void insertSecurity(PropertySecurityVO securityVO) {
		propertyDao.insertSecurity(securityVO);
	}

}
