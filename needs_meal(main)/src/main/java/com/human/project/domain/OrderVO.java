package com.human.project.domain;

import lombok.Data;

@Data
public class OrderVO {

	private String ol_id;
	private String o_id;
	private String ol_name;
	private String ol_addr;
	private String ol_tell;
	private String ol_content;
	private String m_name;
	private String u_id;
	private int o_cnt;
	private int o_price;
	private int o_status;
	private String o_date;
	private String o_pickList;
	private int u_point;
	
	private String startDate;
	private String endDate;
	 	 

}
