package com.javaclass.basic;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.ResultType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javaclass.vo.AgentVO;
import com.javaclass.vo.UserVO;
import com.javaclass.service.ServiceTx;

@Controller
public class SignUpController {
	
	@Autowired
	private ServiceTx service;
	
	@RequestMapping("Userlogin")
	public String SendLoginapage1() {
		return "redirect:login";
	}
	
	@RequestMapping("Agentlogin")
	public String SendLoginpage2() {
		return "redirect:login2";
	}
	
	// 요구화면 연결
	// -1. 회원가입:약관동의 페이지
	@RequestMapping("signUp/signUp1")
	public String Sendpage1() {
		return "signUp/signUp1";
	}
	
	// -2. 회원가입:고객정보 입력 페이지
	@RequestMapping("signUp/signUp2")
	public String Sendpage2() {
		return "signUp/signUp2";
	}
	
	// -2.1. -> 입력된 고객가입 데이터 전송 및 로그인 페이지 redirect
	@RequestMapping("signUp/transfer.do")
	public String addAll(UserVO uvo) throws Exception{
		//System.out.println(uvo.toString());
		service.addAll(uvo);
			
		return "redirect:/login";
	}
	
	// -2.2. -> 회원가입:아이디 중복 검사(중개인/고객 통일)
	@RequestMapping("signUp/userIdCheck.do")
	@ResponseBody
	public boolean IdCheck(@RequestParam String checkBeforeId) throws Exception{
		System.out.println("SignUpController//"+checkBeforeId);
		boolean result = service.IdCheck(checkBeforeId);
	        //getMemberId는 id로 멤버의 dto를 꺼내오는 메소드
			System.out.println("IdCheck 보낼 값은: "+result);
			return result;
		}
	
	// -2.3. -> 회원가입:아이디 중복 검사(중개인/고객 통일)
		@RequestMapping("signUp/userEmailCheck.do")
		@ResponseBody
		public boolean EmailCheck(@RequestParam String checkEmail) throws Exception{
			System.out.println("SignUpController//"+checkEmail);
			boolean result = service.emailCheck(checkEmail);
		        //getMemberId는 id로 멤버의 dto를 꺼내오는 메소드
				System.out.println("보낼 map값은: "+result);
				
				return result;
			}
		
	// -3. 회원가입:중개인정보 입력 페이지
	@RequestMapping("signUp/signUp3")
	public String Sendpage3() {
		return "signUp/signUp3";
	}
	
	// -3.1. -> 입력된 중개인가입 데이터 전송 및 로그인 페이지 redirect
	@RequestMapping("signUp/transfer2")
	public String addAll2(AgentVO avo) throws Exception{
		System.out.println("중개인 가입: "+avo.toString());
		service.addAll2(avo);
		
		return "redirect:/login";
	}
	
	// -4.1. 로그인 작업
	@RequestMapping("loginForm")
	@ResponseBody
	public int login(@RequestParam String inputId, @RequestParam String inputPass, HttpSession session) throws Exception{
		System.out.println("SignUpController - loginForm// id: "+inputId+" pw : " +inputPass);
		int result = service.Login(inputId,inputPass);
			System.out.println("보낼 값은: "+result);
			switch(result) {
				case 1 : session.setAttribute("user", inputId);
				break;
				case 2 : session.setAttribute("agent", inputId);
				break;
				case 3 : session.setAttribute("admin", inputId);
				break;
			}		
			return result;
	}
	
	// -4.2. 계정찾기: 계정 찾기 / 페이지연결
	@RequestMapping("signUp/findAccount")
	public String sendPageFindAccount() {
		return "signUp/findAccount";
	}
	
	// 999.약관동의 페이지 연결
	@RequestMapping("signUp/termsOfService1")
	public String Sendpage4(){
	
		return "signUp/termsOfService1";
	}
	
}
