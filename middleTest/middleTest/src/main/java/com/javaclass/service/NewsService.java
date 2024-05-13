package com.javaclass.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.javaclass.vo.NewsVO;


public interface NewsService {
	
	
	//뉴스목록보기
	public List<NewsVO> getNewsList();
	//뉴스기사 삭제
	void deleteNews(NewsVO vo);

}
