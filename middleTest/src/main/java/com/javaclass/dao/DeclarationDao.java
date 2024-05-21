package com.javaclass.dao;

import java.util.List;

import com.javaclass.vo.DeclarationVO;

public interface DeclarationDao {
	
	public void declarationInsert(DeclarationVO vo);
	//신고 접수 기능
	
	public List<DeclarationVO> getDeclarationList();
	//신고 목록 조회 기능
	
	public void declarationPropertyDelete();
	//신고 매물 삭제 기능 
	
	public void declarationDelete();
	//허위 신고일 경우 신고 삭제 기능 
	
}
