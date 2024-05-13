package com.javaclass.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

//@Alias("cvo")
@Data
public class UserVO {

//	 private int num;
//	 private String ssn;
//	 private String name;
//	 private String address;

	private String user_id;
	private String user_password;
	private String user_email;
	private String user_name;
	private String user_phone;

}
