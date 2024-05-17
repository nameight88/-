package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.vo.DeclarationVO;

@Repository("DeclarationDao")
public class DeclarationDaoImpl implements DeclarationDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void declarationInsert(DeclarationVO vo) {
		System.out.println("mybatis declarationInsert 요청확인 "+vo.toString());
		mybatis.insert("declaration.declarationInsert",vo);
	}
	
	@Override
	public List<DeclarationVO> getDeclarationList() {
		System.out.println("mybatis getDeclarationList 요청확인 ");
		return mybatis.selectList("declaration.getDeclarationList");
	}

	@Override
	public void declarationPropertyDelete() {
		System.out.println("mybatis declarationPropertyDelete 요청확인 ");
		mybatis.delete("declaration.declarationPropertyDelete");
	}

	@Override
	public void declarationDelete() {
		System.out.println("mybatis declarationDelete 요청확인 ");
		mybatis.delete("declaration.declarationDelete");
	}

}
