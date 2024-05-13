package com.javaclass.service;

import java.util.HashMap;
import java.util.List;

import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

public interface PropertyService {

	// 매물 등록
	public void insertProperty(PropertyVO vo);

	// 매물 수정
	public void updateProperty(String propertyId);

	// 매물 삭제
	public void deleteProperty(PropertyVO vo);

	// 매물 목록 조회
	public List<PropertyVO> getPropertyList(PropertyVO vo);

	public List<PropertyVO> searchMap(HashMap map);

	// 매물 상세 조회
	public PropertyVO getProperty(String propertyId);

	// 매물 옵션 등록
	public void insertOption(PropertyOptionVO optionVO);

	// 매물 보안 등록
	public void insertSecurity(PropertySecurityVO securityVO);

}
