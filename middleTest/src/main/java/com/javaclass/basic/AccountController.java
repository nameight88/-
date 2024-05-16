package com.javaclass.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.service.ServiceTx;

@Controller
public class AccountController {
	
	@Autowired
	private ServiceTx service;
	
	@RequestMapping("signUp/findId")
	@ResponseBody
	public String findId(@RequestParam String inputEmail) throws Exception {
		String result = service.findAccountId(inputEmail);
		System.out.println("AccountContoller - 보내는 값은 : "+result);

		return result;
	}
	
	String rememberId;
	
	@RequestMapping("signUp/fixPass")
	@ResponseBody
	public boolean fixPass(@RequestParam String inputPwId, String inputPwEmail) throws Exception {
		boolean result = service.findAccountPass(inputPwId,inputPwEmail);
		System.out.println("AccountContoller/findAccountPass - 보내는 값은 : "+result);
		rememberId = inputPwId;
		return result;
	}
	
	@RequestMapping("signUp/changePass")
	public String changePass() {
		
		return "signUp/changePass";
	}
	
	@RequestMapping("signUp/updatePass")
	@ResponseBody
	public int changePass(@RequestParam String inputNewPw) throws Exception {
		System.out.println("AccountContoller/updatePass 받아오기 "+inputNewPw+" & "+rememberId);
		service.changeNewUserPassword(inputNewPw, rememberId);
		service.changeNewAgentPassword(inputNewPw, rememberId);
		System.out.println("AccountContoller/updatePass 끝");

		return 1;
	}
}
