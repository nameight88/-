package com.javaclass.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.vo.AgentVO;

@Repository
public class AgentDaoImpl implements AgentDao{
	@Autowired
	private SqlSessionTemplate ss;
	
	public void insertAgent(AgentVO vo){
		ss.insert("agent.insertAgent", vo);
	}
}
