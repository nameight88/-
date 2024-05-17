package com.javaclass.service;

import java.util.List;

import com.javaclass.vo.DeclarationVO;

public interface DeclarationService {
	
	//신고 접수 기능
	public void declarationInsert(DeclarationVO vo);
	
	//신고 수정 기능(회원정보페이지 기능 미정)

	//신고 목록 보기
	public List<DeclarationVO> getDeclarationList();
	
	//신고 매물 삭제
	public void declarationPropertyDelete();
	
	//신고 매물 반려 허위 사실인 경우 신고 삭제
	public void declarationDelete();
	
}
