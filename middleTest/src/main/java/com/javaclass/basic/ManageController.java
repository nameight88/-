package com.javaclass.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.service.DeclarationService;
import com.javaclass.service.NewsService;
import com.javaclass.vo.DeclarationVO;
import com.javaclass.vo.NewsVO;

@Controller
@RequestMapping("manage")
public class ManageController {
	
	@Autowired
	private NewsService newsSerivce;
	
	@Autowired
	private DeclarationService declarationService;

	@RequestMapping("managerPage")
	public void  manager(Model model) {
		List<NewsVO> newsList = newsSerivce.getNewsList();
		model.addAttribute("mainPage", newsList);
		System.out.println(newsList);
		model.addAttribute("newsList",newsList);
		
	}

	@RequestMapping("manageReservation")
	public String manageReservation() {
		return "manage/manageReservation";
	}

	@RequestMapping("managereport")
	public void manageReport(Model m) {
		List<DeclarationVO> declarationList = 
				declarationService.getDeclarationList();
		System.out.println(declarationList);
		m.addAttribute("managereport", declarationList);
		m.addAttribute("declarationList", declarationList);
	}

}
