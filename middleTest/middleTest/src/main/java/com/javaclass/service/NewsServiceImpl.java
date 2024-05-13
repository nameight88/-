package com.javaclass.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.NewsDao;
import com.javaclass.vo.NewsVO;

@Service
public class NewsServiceImpl implements NewsService{

		@Autowired
		private NewsDao newsDAO;

		@Override
		public List<NewsVO> getNewsList() {
			
			return newsDAO.getNewsList();
		}

		@Override
		public void deleteNews(NewsVO vo) {
			
			newsDAO.deleteNews(vo);
		}
}
