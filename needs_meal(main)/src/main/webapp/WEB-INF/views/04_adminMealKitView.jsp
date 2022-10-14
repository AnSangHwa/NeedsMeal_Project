<%@page import="com.human.project.domain.ItemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.human.project.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/itemkit_addition_edition_deletion.css">
 <link rel="stylesheet" href="./css/custom.css"> 
</head>
 
<body>
<form action="99_MealUpdate.do">
 <section class="page_core">
        <div class="area_right">
            <div class="text_style_head">밀키트 리스트</div>
            <br>
            <table>
                <thead>
                <tr>
                    <th class="table_head th_">밀키트명</th>
                    <th class="table_head th_">카테고리</th>
                    <th class="table_head th_">필수재료</th>
                    <th class="table_head th_">기본재료</th>
                    <th class="table_head th_">재고수량</th>
                    <th class="table_head th_">판매량</th>
                    <th class="table_head th_">가격<br>(원)</th>
                    <th class="table_head th_">좋아요</th>
                    <th class="table_head th_">추천</th>
                    <th class="table_head th_">설명</th>
                    <th class="table_head th_">수정일</th>
                    <th class="table_head th_">선택</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <c:forEach items="${MealList }" var="meal">
				<tr>
					<td>${meal.m_name }</td>
					<td>${meal.ctg_id }</td>
					<td>${meal.i_id_req }</td>
					<td>${meal.i_id_base }</td>					
					<td>${meal.m_stock }</td>					
					<td>${meal.m_sell_cnt }</td>
					<td>${meal.m_price }</td>
					<td>${meal.m_like_cnt }</td>
					<td>${meal.m_review_cnt }</td>
					<td>${meal.m_content }</td>
					<td>${meal.m_date }</td>					
                    <td><a href="99_adminMealKitPick.do?m_name=${meal.m_name }">선택</a></td>
				</tr>
				</c:forEach>  
                </tbody>
            </table> 
	</div>
    </section>
</form>
 

 
</body>

</html>