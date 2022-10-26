<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/mealkit_addition_edition_deletion.css">
</head>

<body>
 <section class="page_core">

 <section class="page_core">
        <div class="area_right">
            <div class="text_style_head">주문 정보</div>
            <br>
            <table>
                <thead>
                <tr>
                    <th class="table_head th_">주문번호</th>
                    <th class="table_head th_">상품명</th>
                    <th class="table_head th_">ID</th>
                    <th class="table_head th_">주문수량</th>
                    <th class="table_head th_">주문가격(원)</th>
                    
                    <th class="table_head th_">배송현황</th>
                    <th class="table_head th_">주문날짜</th>
                   
                </tr>
                </thead>
                <tbody>
                <tr>
                <c:forEach items="${deliveryList}" var="list">
				<tr>
					<td>${list.o_id }</td>
					<td>${list.m_name} <c:if test="${list.o_cnt-1 != 0}"> 외 ${list.o_cnt-1}</c:if></td>
					<td>${list.u_id }</td>
					<td>${list.o_cnt }</td>					
					<td>${list.o_price }</td>					
					
					<td>
					<form action="deliveryUpdate.do">
						<select name="o_status" class="deliverySelect">
							<option value="0" >결제완료</option>
							<option value="1" >배송중</option>
							<option value="2" >배송완료</option>
						</select>
						<button class="alert">업데이트</button> 
						<input id="status" type="hidden" value="${list.o_status}">							
						<input name="o_id" type="hidden" value="${list.o_id}">							
					</form>
					</td>
					<td>${list.o_date }</td>
					
					
				</tr>
				</c:forEach>  
                </tbody>
            </table> 
	</div>
    </section>

        <div class="page_core_container">
        <div class="area_left">
        <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
            </div>
            
            <div class="page_element_middle">
               
          </div>      
        </div>
          
        </div>
    </section>

 

 
</body>
<script src="js/jquery-3.2.1.min.js"></script>
<script>
 let list = $('.deliverySelect').length

for(let i = 0; i < list; i++){
	
 $('.deliverySelect').eq(i).val($('.deliverySelect~input[id=status]').eq(i).val()).prop("selected",true);
}

 $('.alert').click(function(){
	 alert('배송정보가 업데이트 되었습니다');
 })

 
</script>


</html>