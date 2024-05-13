package com.javaclass.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
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
	public String agentManagement(PropertyVO vo, Model model) {
		List<PropertyVO> result = propertyService.getPropertyList(vo);
		model.addAttribute("propertyList", result);

		return "agent/agentManagement";
	}

	@RequestMapping("/agentReservation")
	public String agentReservation() {
		return "agent/agentReservation";
	}

	// 매물 상세 조회
	@RequestMapping("/agentUpdate")
	public String agentDetail(@RequestParam("id") String propertyId, Model model) {
		System.out.println("수정할 매물의 아이디: " + propertyId);
		PropertyVO vo = propertyService.getProperty(propertyId);
		model.addAttribute("property", vo);
		return "agent/agentUpdate";

	}
//	public String agentUpdate(@RequestParam("id") String propertyId, Model model) {
//		
//		System.out.println("수정할 매물의 아이디: " + propertyId);
//		PropertyVO vo = propertyService.getProperty(propertyId);
//		//propertyService.updateProperty(propertyId);
//		model.addAttribute("property",vo);
//		
//		return "agent/agentUpdate";
//	}

	@RequestMapping("/propertyUpdate")
	public String propertyUpdate(PropertyVO vo) {

		return "redirect:/agent/agentManagement";
	}

	@RequestMapping("propertyInsert")
	@Transactional
	public String propertyInsert(PropertyVO vo, PropertyOptionVO optionVO, PropertySecurityVO securityVO) {

		propertyService.insertProperty(vo);
		propertyService.insertOption(optionVO);
		propertyService.insertSecurity(securityVO);
		return "redirect:agentManagement";
	}

}
