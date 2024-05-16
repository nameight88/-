package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

public interface PropertyService {

	// 매물 등록
//	public void insertProperty(PropertyVO vo);

	// 매물 수정
	public void updateProperty(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO);

	// 매물 삭제
	public void deleteProperty(String propertyId);

	// 매물 목록 조회
	public List<PropertyVO> getPropertyList(PropertyVO vo);
	

	public List<PropertyVO> searchMap(HashMap map);

	// 매물 상세 조회
	public PropertyVO getProperty(String propertyId);
	
	public PropertyOptionVO getPropertyOption(String propertyId);
	
	public PropertySecurityVO getPropertySecurity(String propertyId);
	
	
	
	// 매물 등록 트랜젝션 도전
	public void propertyInsert(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO);
	
	
	
	// 맵 리스트
	public List<PropertyVO> getPropertyMapList(PropertyVO vo);

}
