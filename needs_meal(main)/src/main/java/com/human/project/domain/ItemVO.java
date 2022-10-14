package com.human.project.domain;

import lombok.Data;

@Data
public class ItemVO {

	
    private String i_id;        	// 재료 고유의 값 
    private String i_name;     	 	// 재료이름
    private int ctg_id;         	// 카테고리 코드
    private int i_weight;       	// 재료무게
    private int i_sell_cnt;    		// 판매수량
    private int i_stock_cnt;   		// 재고수량      
    private int i_price; 			// 가격    
    private String i_date; 			// 생성일/수정일
	
    /*
	    카테코리 코드
	    총 4자리로 구성
	  XX00 : 첫번째,두번째 자리는 카테고리의 큰 분류
	  00XX : 세번째,네번째 자리는 카테고리의 작은 분류
	  
	  1000 : 밀키트
	  1001 : 한식
	  1002 : 중식
	  1003 : 분식
	  1004 : 양식
	  1005 : 일식
	  
	  2000 : 재료
	  2001 : 채소
	  2002 : 육류
	  2003 : 소스
	  2004 : 육수
	  2005 : 간식

	  3000 : 자유게시판
	  3001 : 잡담
	  3002 : 메뉴추천
	  3003 : 꿀팁
	  
	  4000 : 전체리뷰
	  4001 : 내가쓴글
	  
	  5000 : 고객문의
	  5001 : 내 문의보기
	  
    */
}
