package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.vo.UserVO;

@Repository
public class UserDaoImpl implements UserDao{
	@Autowired
	private SqlSessionTemplate ss;
	
	public void insertUser(UserVO vo){
		ss.insert("user.insertUser", vo);
	}
	
	public void findIdUser(UserVO vo){
		ss.selectOne("user.findIdUser", vo);
	}

	public boolean IdCheck(String checkBeforeId) {
		List<Object> result = ss.selectList("user.idCheck",checkBeforeId);
		System.out.println("Iam 결과에요:"+result);
		if(result == null || result.isEmpty()) {
			// 아이디가 없으면
			return true;
		}else
			// 아이디가 있으면
			return false;
	}

	@Override
	public boolean Login(String inputId, String inputPass) {
		List<Object> resultId = ss.selectList("user.loginId",inputId);
		List<Object> resultPass = ss.selectList("user.loginPass",inputPass);
		System.out.println("Iam 결과에요:"+resultId+resultPass);
		
		boolean idMatch = resultId.contains(inputId); // 아이디가 일치하는지 확인
	    boolean passMatch = resultPass.contains(inputPass); // 비밀번호가 일치하는지 확인
	    
	    if (idMatch && passMatch) {
	        // 아이디와 비밀번호가 모두 일치하는 경우
	        System.out.println("아이디와 비밀번호가 일치합니다.");
	        return true;
	    } else {
	        // 아이디 또는 비밀번호가 일치하지 않는 경우
	        System.out.println("아이디 또는 비밀번호가 일치하지 않습니다.");
	        return false;
	    }
	}
}
