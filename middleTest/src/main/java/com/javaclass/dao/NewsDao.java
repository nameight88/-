package com.javaclass.dao;

import java.util.List;

import com.javaclass.vo.NewsVO;

public interface NewsDao {
	
	public List<NewsVO> getNewsList();
	
	public void deleteNews(NewsVO vo);

}
