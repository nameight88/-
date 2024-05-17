package com.javaclass.service;

import com.javaclass.vo.AgentVO;
import com.javaclass.vo.UserVO;


public interface ServiceTx {
	public void addAll(UserVO uvo) throws Exception;
	
	public void addAll2(AgentVO avo) throws Exception;

	public void findIdUser(UserVO uvo) throws Exception;

	public boolean IdCheck(String checkBeforeId) throws Exception;

	public int Login(String inputId, String inputPass)throws Exception;

	public String findAccountId(String inputEmail)throws Exception;

	public boolean emailCheck(String checkEmail)throws Exception;

	public boolean findAccountPass(String inputPwId, String inputPwEmail)throws Exception;

	public int changeNewUserPassword(String inputNewPw, String rememberId)throws Exception;

	public int changeNewAgentPassword(String inputNewPw, String rememberId)throws Exception;

}
