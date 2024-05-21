package com.javaclass.basic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


import com.javaclass.service.NewsService;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService newsSerivce;

	
	@GetMapping("/manage/deleteNews")
	@ResponseBody
	public String deleteNews(@RequestParam int news_num) {
	   // System.out.println("삭제 신호 확인 "+news_num);
	    newsSerivce.deleteNews(news_num);
	    return "success";
	}
	

}
