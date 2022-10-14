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
<form action="99_itemUpdate.do">
 <section class="page_core">
        <div class="area_right">
            <div class="text_style_head">재료 리스트</div>
            <br>
            <table>
                <thead>
                <tr>
                    <th class="table_head th_">재료코드</th>
                    <th class="table_head th_">재료명</th>
                    <th class="table_head th_">카테고리</th>
                    <th class="table_head th_">무게</th>
                    <th class="table_head th_">판매량</th>
                    <th class="table_head th_">재고수량</th>
                    <th class="table_head th_">가격<br>(원)</th>
                    <th class="table_head th_">입고일</th>
                    <th class="table_head th_">선택</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <c:forEach items="${ItemList }" var="item">
				<tr>
					<td>${item.i_id }</td>
					<td>${item.i_name }</td>
					<td>${item.ctg_id }</td>
					<td>${item.i_weight }</td>
					<td>${item.i_sell_cnt }</td>					
					<td>${item.i_stock_cnt }</td>
					<td>${item.i_price }</td>
					<td>${item.i_date }</td>					
                    <td><a href="99_adminItemPick.do?i_name=${item.i_name }">선택</a></td>
				</tr>
				</c:forEach>  
                </tbody>
            </table> 
	</div>
    </section>
</form>
 

 
</body>

</html>