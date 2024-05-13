package com.javaclass.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customerpage")
public class Customerpage {

	@RequestMapping("/myInfo")
	public String Category() {
		return "customerpage/myInfo";
	}

	@RequestMapping("/interestItem")
	public String interestitem() {
		return "customerpage/interestItem";
	}

	@RequestMapping("/qnaAdmin")
	public String qnaAdmin() {
		return "customerpage/qnaAdmin";
	}

	@RequestMapping("/reservAdmin")
	public String reservAdmin() {
		return "customerpage/reservAdmin";
	}

	@RequestMapping("/myInfoUpdate")
	public String myInfoUpdate() {
		return "customerpage/myInfoUpdate";
	}

	@RequestMapping("/updateSubmit")
	public String updateSubmit() {
		return "redirect:/customerpage/myInfo";
	}

}
