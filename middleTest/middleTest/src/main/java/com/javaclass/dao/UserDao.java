package com.javaclass.dao;

import com.javaclass.vo.UserVO; 

public interface UserDao {
	public void insertUser(UserVO vo);
	
	public void findIdUser(UserVO vo);

	public boolean IdCheck(String checkBeforeId);
	
	public boolean Login(String inputId, String inputPass);
}
