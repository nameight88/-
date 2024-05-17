package com.javaclass.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.javaclass.service.DeclarationService;
import com.javaclass.service.PropertyService;
import com.javaclass.vo.AgentVO;
import com.javaclass.vo.DeclarationVO;
import com.javaclass.vo.PropertyVO;

@Controller
public class DeclarationController {
		
	 @Autowired
	 private PropertyService propertyService;
	 
	 @Autowired
	 private DeclarationService declarationService;
	
	 @PostMapping("report")
		public String report(@RequestParam(value = "property_id") String propertyId,Model m) {
			System.out.println("report 신호 확인 "+propertyId);
			PropertyVO vo = propertyService.getProperty(propertyId);
			
			m.addAttribute("property",vo);
			return "report";	
		}
		
	 @RequestMapping("declaration_insert")
		public String report_insert(DeclarationVO vo) {
			System.out.println("declaration_insert 신호 확인 "+vo.toString());
			
			declarationService.declarationInsert(vo);
			return "redirect:mainPage";
		}
}
