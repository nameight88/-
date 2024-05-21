package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.DeclarationDao;
import com.javaclass.vo.DeclarationVO;

@Service("declarationService")
public class DeclarationServiceImpl implements DeclarationService{
	
	@Autowired
	private DeclarationDao declarationDao;

	@Override
	public void declarationInsert(DeclarationVO vo) {
		System.out.println("reportInsert 요청확인 ");
		declarationDao.declarationInsert(vo);
	}
	
	@Override
	public List<DeclarationVO> getDeclarationList() {
		System.out.println("getDeclarationList 요청확인 ");
		return declarationDao.getDeclarationList();
	}

	@Override
	public void declarationPropertyDelete() {
		System.out.println("declarationPropertyDelete 요청확인 ");
		declarationDao.declarationPropertyDelete();
	}

	@Override
	public void declarationDelete() {
		System.out.println("declarationDelete 요청확인");
		declarationDao.declarationDelete();
	}

}
