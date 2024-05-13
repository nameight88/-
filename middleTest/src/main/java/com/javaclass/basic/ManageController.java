package com.javaclass.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("manage")
public class ManageController {

	@RequestMapping("managerPage")
	public String manager() {
		return "manage/managerPage";
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
