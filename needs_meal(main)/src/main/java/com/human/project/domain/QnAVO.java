package com.human.project.domain;

import lombok.Data;

@Data
public class QnAVO {

	private int q_id;
	private int ctg_id;
	private String goods;
	private String u_id;
	private String q_title;
	private String q_content;
	private String q_date;
	
//	날짜 검색기능
	private String startDate;
	private String endDate;
		
	
	 

}
