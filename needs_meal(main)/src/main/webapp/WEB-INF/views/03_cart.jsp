<%@page import="com.human.project.domain.MealVO"%>
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
                                <c:forEach items="${CartMealList}" var="meal">
                                <tr id="cart${meal.cart_cnt }">
                                    <td class="thumbnail-img">
                                        <a href="99_productView.do?m_name=${meal.m_name}"><img class="img-fluid" src="images/imgMeal/${meal.m_name }.png" alt=""/></a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="99_productView.do?m_name=${meal.m_name}">${meal.m_name}</a>
                                    </td>
                                    <td class="price-pr"><p>${meal.m_price}</p></td>
                                    <td class="quantity-box cart"><p>${meal.m_sell_cnt}</p></td>
                                    <td class="total-pr"><p>${meal.m_price * meal.m_sell_cnt}</p></td>
                                    <td class="remove-pr"><a href="99_cart_delete.do?m_name=${meal.m_name }&m_price=${meal.m_price}&cart_cnt=${meal.cart_cnt }"><i class="fas fa-times"></i></a>
                                    </td>
                                </tr>		
								</c:forEach>
								<c:forEach items="${CartItemList}" var="item">
                                <tr id="cart${item.cart_cnt }">
                                    <td class="thumbnail-img">
                                        <a href="99_itemView.do?i_id=${item.i_id}"><img class="img-fluid" src="images/imgMeal/${item.i_name }.png" alt="" /></a>
                                    </td>
                                    <td class="name-pr">
                                        <a href="99_itemView.do?i_id=${item.i_id}">${item.i_name}</a>
                                    </td>
                                    <td class="price-pr"><p>${item.i_price}</p></td>
                                    <td class="quantity-box cart"><p>${item.i_sell_cnt}</p></td>
                                    <td id="totalPrice" class="total-pr"><p>${item.i_price * item.i_sell_cnt}</p></td>
                                    <td class="remove-pr"><a href="98_cart_delete.do?i_name=${item.i_name }&i_price=${item.i_price}&cart_cnt=${item.cart_cnt }&i_id=${item.i_id}"><i class="fas fa-times"></i></a>
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
                     <div class="ml-auto font-weight-bold"></div>
                 </div>
                 <div class="d-flex" id="sale-price">
                     <h4>할인</h4>
                     <div class="ml-auto font-weight-bold"> <span>0</span> </div>
                 </div>
                 <hr class="my-1">
                 <div class="d-flex">
                     <h4>품목</h4>
                     <div class="ml-auto font-weight-bold">  </div>
                 </div>
                 <hr>
                 <div class="d-flex gr-total" id="last-price">
                     <h5>최종금액</h5>
                     <div class="ml-auto h5"></div>
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

<script>

	
	
	let Price = $('td.total-pr > p');
	let TotalPrice = 0;
	for(let i = 0; i < Price.length; i++){
		
		TotalPrice += Number(Price.eq(i).text());
		
	}
	
	$('#last-price > div').text(TotalPrice);
	$('#order-price > div').text(TotalPrice);
	
	if(Price.length == 0){
		alert("담긴 상품이 없습니다");
		location.href = "01_main.do";
	}

</script>
</html>