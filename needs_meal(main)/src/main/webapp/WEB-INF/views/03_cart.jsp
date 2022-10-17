<%@page import="com.human.project.domain.MealVO"%>
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
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>
<!-- Start Cart  -->
<form action="03_paymentForm.do" method="post">
    <div class="cart-box-main">
        <div class="container">
            <div class="row" id="cart-row">
                <div class="col-lg-8">
                    <div class="table-main table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Images</th>
                                    <th>상품명</th>
                                    <th>가격</th>
                                    <th>갯수</th>
                                    <th>금액</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${CartList}" var="meal">
                                <tr id="cart1">
                                    <td class="thumbnail-img">
                                        <a href="#"><img class="img-fluid" src="images/imgMeal/${meal.m_name }.png" alt="" /></a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="#">${meal.m_name}</a>
                                    </td>
                                    <td class="price-pr"><p>${meal.m_price}</p></td>
                                    <td class="quantity-box cart"><input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text"></td>
                                    <td class="total-pr"><p>${meal.m_price}</p></td>
                                    <td class="remove-pr"><a href="99_cart_delete.do?m_name=${meal.m_name }&m_price=${meal.m_price}&cart_cnt=${meal.cart_cnt }"><i class="fas fa-times"></i></a>
                                    </td>
                                </tr>		
								</c:forEach>
                            </tbody>
                        </table> 
                    </div>                    
                </div>

                <!-- order summary -->
                <div class="col-lg-4" id="order-book">
                    <div class="order-box">
                 <h3>주문 정보</h3>
                 <div class="d-flex" id="order-price">
                     <h4>물품총액</h4>
                     <div class="ml-auto font-weight-bold"> 13000 </div>
                 </div>
                 <div class="d-flex" id="sale-price">
                     <h4>할인</h4>
                     <div class="ml-auto font-weight-bold"> -<span>5000</span> </div>
                 </div>
                 <hr class="my-1">
                 <div class="d-flex">
                     <h4>품목</h4>
                     <div class="ml-auto font-weight-bold">  </div>
                 </div>
                 <hr>
                 <div class="d-flex gr-total" id="last-price">
                     <h5>최종금액</h5>
                     <div class="ml-auto h5"> 6000 </div>
                 </div>
                 <hr> 
                 <div class="col-lg-6 col-sm-6" id="aaaa">
                   <div class="update-box">
                      <input value="결제하기" class="update-box" type="submit">
                   </div>
	             </div>
	           </div>
	        </div>
                    
         </div>
                    <!-- order summary end-->
      </div>                
   </div>
</form>
    <!-- End Cart -->
 
</body>
<jsp:include page="00_footer.jsp"></jsp:include>
</html>