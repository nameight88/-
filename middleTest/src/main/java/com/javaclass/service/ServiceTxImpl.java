package com.javaclass.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

	// 이메일 중복 확인
	@Override
	public boolean emailCheck(String checkEmail) throws Exception {
		boolean result = udao.emailCheck(checkEmail);
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

	// 공통 이벤트 ----------------------------------------------------------
	// 로그인
	@Override
	public int Login(String inputId, String inputPass) throws Exception {
		int result = udao.Login(inputId,inputPass);
		System.out.println("userLogin-OK");
		return result;
	}
	
	// 계정 찾기 - 아이디
	@Override
	public String findAccountId(String inputEmail) throws Exception {
		String result = udao.findAccountId(inputEmail);
		System.out.println("findAccountId-OK");
		
		return result;
	}
	
	// 계정 찾기 - 비밀번호
	@Override
	public boolean findAccountPass(String inputPwId, String inputPwEmail) {
		boolean result = udao.findAccountPass(inputPwId,inputPwEmail);
		System.out.println("findAccountId-OK");
		return result;
	}
	
	// 계정 찾기 - 비밀번호 찾기 후 수정(고객)
	@Override
	public int changeNewUserPassword(String inputNewPw,String rememberId) throws Exception {
		int result = udao.changeNewUserPassword(inputNewPw, rememberId);
		System.out.println("changeNewUserPassword-OK");
		return result;
	}
	
	// 계정 찾기 - 비밀번호 찾기 후 수정(중개인)
	@Override
	public int changeNewAgentPassword(String inputNewPw, String rememberId) throws Exception {
		int result = udao.changeNewAgentPassword(inputNewPw, rememberId);
		System.out.println("changeNewAgentPassword-OK");
		return result;
	}

	
	
}
