package com.javaclass.basic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.service.NewsService;
import com.javaclass.vo.NewsVO;

@Controller
public class NewsController {
	
//	@Autowired
//	private NewsService newsSerivce;
//
//	
//	@GetMapping("getNewsList")
//	public String getNewsList(Model model) {
//      
//        return "mainPage";
//	}

//	@RequestMapping("deleteNews")
//	public String deleteBoard(NewsVO vo) {
//		System.out.println("deleteBoard 요청 확인"+"/"+vo.toString());
//		newsSerivce.deleteNews(vo);
//		return "redirect:getList.do"; 
//	}
//	
}
