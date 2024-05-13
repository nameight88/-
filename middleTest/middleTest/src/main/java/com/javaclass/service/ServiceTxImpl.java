package com.javaclass.service;


import java.util.List;

import org.apache.ibatis.annotations.ResultType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javaclass.dao.AgentDao;
import com.javaclass.dao.UserDao;
import com.javaclass.vo.AgentVO;
import com.javaclass.vo.UserVO;


@Service
public class ServiceTxImpl implements ServiceTx{

	@Autowired
	private UserDao udao;
	
	@Autowired
	private AgentDao adao;
	
	// 로그인
	@Override
	public boolean Login(String inputId, String inputPass) throws Exception {
		boolean result = udao.Login(inputId,inputPass);
		System.out.println("userLogin-OK");
		return result;
	}

	//고객 관련 함수 -----------------------------------------------------
	// 회원가입 - 고객정보 입력
	@Override
	public void addAll(UserVO uvo) throws Exception {
		udao.insertUser(uvo);
		System.out.println("userCreateAcc-OK");
		
	}
	
	// 아이디 찾기 - 고객정보 출력
	@Override
	public void findIdUser(UserVO uvo) throws Exception {
		udao.findIdUser(uvo);
		System.out.println("userIdFind-OK");
		
	}
	
	// 아이디 중복 확인
		@Override
		public boolean IdCheck(String checkBeforeId) throws Exception {
			
			//System.out.println("여긴 서비스 임플"+checkBeforeId);
			boolean result = udao.IdCheck(checkBeforeId);
			System.out.println("idcheck 찍은 여긴 서비스 임플:"+result);
			return result;
			
	}
		
		
	// 중개인 관련 함수 -----------------------------------------------------
	// 회원가입 - 중개인정보 입력
	@Override
	public void addAll2(AgentVO avo) throws Exception {
		adao.insertAgent(avo);
		System.out.println("AgentOK");
	}
	
	
}
