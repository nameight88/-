package com.javaclass.vo;

import org.apache.ibatis.type.Alias;

import lombok.Data;

//@Alias("cvo")
@Data
public class AgentVO {
	
	 private String agent_id;
	 private String agent_password;
	 private String agent_email;
	 private String agent_name;
	 private String agent_phone;
	 private String agency;
	 private String license_num;
	 private String agentImg_url;
	 
	
	
}
