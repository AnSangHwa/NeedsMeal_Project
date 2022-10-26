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
        <div class="area_right" style="overflow:scroll; height: 450px;">
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
                    <th class="table_head th_">필수재료선택</th>
                    <th class="table_head th_">기본재료선택</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ItemList }" var="item">
				<tr class="item-list" style="display: none;">
					<td class="item-name">${item.i_id }</td>
					<td>${item.i_name }</td>
					<td class="item-ctg-${item.ctg_id }">${item.ctg_id }</td>
					<td>${item.i_weight }</td>
					<td>${item.i_sell_cnt }</td>					
					<td>${item.i_stock_cnt }</td>
					<td class="item-price">${item.i_price }</td>
					<td>${item.i_date }</td>					
                    <td class="req-pick" style="text-align: center;"><a href="#">선택</a></td>
                    <td class="base-pick" style="text-align: center;"><a href="#">선택</a></td>
				</tr>
				</c:forEach>  
                </tbody>
            </table> 
	</div>
	
	<div>
            <div class="text_style_head">상품코드 리스트</div>
            <br>
            <table>
                <thead>
                <tr>
                    <th class="table_head th_">상품코드</th>
                    <th class="table_head th_">카테고리명</th>
                    <th class="table_head th_">카테고리코드</th>
                    <th class="table_head th_">선택</th>
                </tr>
                </thead>
                <tbody>
				<tr>
					<td>v(vegetable)</td>
					<td>채소</td>
					<td>2001</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>f(fish)</td>
					<td>수산</td>
					<td>2002</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>m(meat)</td>
					<td>육류</td>
					<td>2003</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>s(sauce)</td>
					<td>소스</td>
					<td>2004</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>d(dish)</td>
					<td>밑반찬</td>
					<td>2005</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>a(appetizer)</td>
					<td>간식</td>
					<td>2006</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>n(noodle)</td>
					<td>면</td>
					<td>2007</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
				<tr>
					<td>o(other)</td>
					<td>그외</td>
					<td>2008</td>
					<td><button class="pick-ctg" type="button">선택</button></td>
				</tr> 
                </tbody>
            </table> 
	</div>
    </section>
</form>
 

 
</body>

</html>