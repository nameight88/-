package com.javaclass.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.service.NewsService;
import com.javaclass.vo.NewsVO;

@Controller
@RequestMapping("manage")
public class ManageController {
	
	@Autowired
	private NewsService newsSerivce;

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
	public String manageReport() {
		return "manage/managereport";
	}

}
