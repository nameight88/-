package com.javaclass.basic;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.service.NewsService;
import com.javaclass.service.PropertyService;
import com.javaclass.vo.NewsVO;
import com.javaclass.vo.PropertyVO;

@Controller
public class IndexController {

	@Autowired
	private PropertyService propertyService;
	
	@Autowired
	private NewsService newsSerivce;

	@RequestMapping("mainPage")
	public void mainPage(Model model) {
		List<NewsVO> newsList = newsSerivce.getNewsList();
		model.addAttribute("mainPage", newsList);
		System.out.println(newsList);
		model.addAttribute("newsList",newsList);
	}
 
	@RequestMapping("ProductList")
	public String Category() {
		return "ProductList";
	}

	@RequestMapping("login")
	public String Login() {
		return "login";
	}

	@RequestMapping("map")
	public void map(PropertyVO vo, Model model, String searchText) {

		if (searchText == null) {
			List<PropertyVO> result = propertyService.getPropertyList(vo);
			// System.out.println(result);
			model.addAttribute("propertyList", result);
		}
	}

	// 검색 기능
	@RequestMapping("searchMap")
	public String searchMap(String property_type, String property_cate, String searchText, Model model) {

		// 아직 searchText 못함
		HashMap map = new HashMap();
		map.put("property_type", property_type);
		map.put("property_cate", property_cate);
		map.put("searchText", searchText);

		List<PropertyVO> result = propertyService.searchMap(map);

		model.addAttribute("propertyList", result);

		return "map";

	}

	@RequestMapping("propertydetails")
	public String propertydetails() {
		return "propertydetails";
	}

}
