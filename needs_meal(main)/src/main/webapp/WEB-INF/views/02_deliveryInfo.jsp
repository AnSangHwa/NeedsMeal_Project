<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>
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
                
                
                <div class="recent-order">
                    <h3>배송정보</h3>
                    <table class="recent-order-table">
                        <thead class="recent-order-table-head">
                           <tr>
                                <td>
                                    주문번호
                                </td> 
                                <td >                               
                   받는 분
                                </td>
                                <td >
                  주소
                                </td>
                                <td >
               전화번호
                                </td>
                                <td >
                  요청사항
                                </td>
                       
                            </tr>
                        </thead>
                        <tbody>
                       
                        
                            <tr>
                                <td>
                                    ${deliveryInfo.o_id} 
                                </td>
                                <td>
                                ${deliveryInfo.ol_name} 
                                </td>
                                <td>
                                    ${deliveryInfo.ol_addr} 
                                </td>
                                <td>
                                   ${deliveryInfo.ol_tell} 
                                </td>
                                <td>
                                	${deliveryInfo.ol_content} 
                                </td>
                           
                            </tr>
                      
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