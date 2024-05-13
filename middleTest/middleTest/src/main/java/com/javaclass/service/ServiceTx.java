package com.javaclass.service;

import java.util.List;

import org.apache.ibatis.annotations.ResultType;

import com.javaclass.vo.AgentVO;
import com.javaclass.vo.UserVO;


public interface ServiceTx {
	public void addAll(UserVO uvo) throws Exception;
	
	public void addAll2(AgentVO avo) throws Exception;

	public void findIdUser(UserVO uvo) throws Exception;

	public boolean IdCheck(String checkBeforeId) throws Exception;

	public boolean Login(String inputId, String inputPass)throws Exception;
}
