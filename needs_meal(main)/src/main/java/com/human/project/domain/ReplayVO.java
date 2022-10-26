package com.human.project.domain;

import lombok.Data;

@Data
public class ReplayVO {

	private int r_id;
	private int c_id;
	private String u_id;
	private int r_seq_id;
	private int r_group;
	private String r_content;
	private String r_date;
	
//	유저와 조인해서 아이디 얻어오기
	private String u_name;
		
	
 
	   

}
