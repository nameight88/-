package com.javaclass.basic;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaclass.service.PropertyService;
import com.javaclass.vo.PropertyOptionVO;
import com.javaclass.vo.PropertySecurityVO;
import com.javaclass.vo.PropertyVO;

@Controller
@RequestMapping("agent")
public class AgentController {

	@Autowired
	private PropertyService propertyService;
	
	public String getSessionValue(HttpServletRequest request) {
	    HttpSession session = request.getSession(false); // 세션이 없으면 null 반환
	    if (session != null) {
	        String userId = (String) session.getAttribute("userId"); // "userId"라는 이름의 세션 값 가져오기
	        if (userId != null) {
	            return userId; // 세션 값 반환
	        }
	    }
	    return null; // 세션에 값이 없는 경우 null 반환
	}

	@RequestMapping("/agentInfo")
	public String agentInfo() {
		return "agent/agentInfo";
	}

	@RequestMapping("/agentPage")
	public String agentPage() {
		return "agent/agentPage";
	}

	// 매물 list
	@RequestMapping("/agentManagement")
	public String agentManagement(PropertyVO vo, Model model, HttpSession session) {

		String agent_id = (String) session.getAttribute("agent");
		vo.setAgent_id(agent_id);

		List<PropertyVO> result = propertyService.getPropertyList(vo);
		model.addAttribute("propertyList", result);

		return "agent/agentManagement";
	}

	@RequestMapping("/agentReservation")
	public String agentReservation() {
		return "agent/agentReservation";
	}

	
	
	// 매물 상세 조회
	@RequestMapping("/agentDetail")
	public String agentDetail(@RequestParam("propertyId") String propertyId, Model model) {
		System.out.println("수정할 매물의 아이디: " + propertyId);
		PropertyVO vo = propertyService.getProperty(propertyId);
		PropertyOptionVO optionVO = propertyService.getPropertyOption(propertyId);
		PropertySecurityVO securityVO = propertyService.getPropertySecurity(propertyId);
		
		
		model.addAttribute("property", vo);
		model.addAttribute("option", optionVO);
		model.addAttribute("security", securityVO);
		
		return "agent/agentUpdate";
	}
	
	// 매물 삭제
	@RequestMapping("/agentDelete")
	public String agentDelete(@RequestParam("id") String propertyId, Model model) {
		System.out.println("삭제할 매물의 아이디: " + propertyId);
		propertyService.deleteProperty(propertyId);
		return "redirect:agentManagement";

	}

	// 매물수정
	@RequestMapping("/propertyUpdate")
	public String propertyUpdate(@ModelAttribute PropertyOptionVO optionVO, @ModelAttribute PropertySecurityVO securityVO , @ModelAttribute PropertyVO vo) {
	    // 데이터 처리 로직 추가
		
		propertyService.updateProperty(vo, optionVO, securityVO);
		System.out.println(vo.toString());
		System.out.println(optionVO.toString());
		System.out.println(securityVO.toString());
		
	    return "redirect:agentManagement";
	}

	// 매물등록
	@RequestMapping("propertyInsert")
	public String propertyInsert(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {
//		int option_id = propertyService.insertOption(optionVO);
//		int security_id = propertyService.insertSecurity(securityVO);
//
//		propertyService.insertProperty(vo);
		System.out.println(vo.toString());
		
		propertyService.propertyInsert(vo, optionVO, securityVO);

		return "redirect:agentManagement";
	}

}
