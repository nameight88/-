package com.javaclass.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.vo.NewsVO;

@Repository
public class NewsDaoImpl implements NewsDao{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<NewsVO> getNewsList() {
		System.out.println("mybatis getNewsList 호출 확인 ");
		return mybatis.selectList("news.getNewsList");
	}

	@Override
	public void deleteNews(NewsVO vo) {
		mybatis.delete("news.newsDelete",vo);
	}

}
