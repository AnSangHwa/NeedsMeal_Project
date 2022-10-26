<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>
 <!-- Start My Account  -->
    <div class="my-account-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="mypage">
                        <h3>마이페이지</h3>
                        <ul>
                           <li><a href="02_MyPage.do">홈으로 </a></li>    
                            <li><a href="02_orderList.do"> 주문목록/배송조회 </a></li>    
                            <li><a href="02_insertMypass.do"> 회원정보변경 및 탈퇴 </a></li>       
                            <li><a href="02_productQnAList.do"> 고객문의 </a></li>    
                            <li><a href="02_productReview.do"> 나의 상품후기 </a></li>  
                        </ul>
                    </div>           
                </div>
                <div class="col-lg-9">
                    <div class = "my-info">
                    <ul>    
                        <li>
                            <img src="images/grade/grade${user.u_grade}.jpg">
                        </li>
                        <li>
                            <h3>적립금 <a href="#" style="font-size: 50px;">${user.u_point}</a>원</h3>
                        </li>
                    </ul>
                    </div>
                    <div class="recent-order">
                        <h3>최근 주문 정보</h3>
                        <table class="recent-order-table">
                            <thead class="recent-order-table-head">
                                <tr>
                                    <td>
                                        날짜/주문번호
                                    </td> 
                                    <td >                               
                                        상품명/옵션
                                    </td>
                                    <td >
                                        상품금액/수량
                                    </td>
                                    <td >
                                        주문상태
                                    </td>
                  
                                </tr>
                            </thead>
                            <tbody>
                               <c:forEach items="${orderList}" var="order" end="0">
                        
                            <tr>
                                <td>
                                    ${order.o_date} / ${order.o_id} 
                                </td>
                                <td>
                                    ${order.m_name} <c:if test="${order.o_cnt-1 != 0}">외 ${order.o_cnt-1}</c:if> / 없음 
                                </td>
                                <td>
                                    ${order.o_price} / ${order.o_cnt}
                                </td>
                                <td>
                                   <c:choose>
                                   <c:when test="${order.o_status == 0}">결제완료</c:when>
                                   <c:when test="${order.o_status == 1}">배송중</c:when>
                                   <c:when test="${order.o_status == 2}">배송완료</c:when>
                                   </c:choose> 
                                </td>
                           
                            </tr>
                        </c:forEach>
                            </tbody>
                        </table>
                    </div>
                     <br>
                    <div class="QnA-tb">
                     <h3 style="display: inline-block;">내 문의 정보&nbsp;&nbsp;&nbsp;&nbsp;</h3>
                     <a href="02_productQnAList.do"><button>내 문의 전체 보기</button></a>
                    <table class="QnA-table" >
                         <colgroup>
					            <col width="10%">
					            <col width="60%">
					            <col width="30%">
           
        				</colgroup>
                        <thead class="QnA-table-header">
	                            <tr>
	                                <td >
	                                    문의번호
	                                </td> 
	                                <td >                               
	                                    제목
	                                </td>
	                                <td >
	                                    문의날짜
	                                </td>                             
	                            </tr>
                         
                        </thead>
                       
                        <tbody>
                        <c:forEach items="${qnaList}" var="qna" end="0">
						<tr>
							<td>${qna.q_id}</td>
							<td style="text-align: left"><a href="02_QnAView.do?q_id=${qna.q_id}">${qna.q_title }</a></td>
							<td>${qna.q_date }</td>						
						</tr>	
						</c:forEach>	

                        </tbody>

                    </table>
                    

                </div>
                </div>       
            </div>
        </div>  
    </div>
    <!-- End My Account -->

 
<jsp:include page="00_footer.jsp"></jsp:include>
</body>

</html>