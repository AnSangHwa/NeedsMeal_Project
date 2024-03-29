<%@page import="com.human.project.domain.MealVO"%>
<%@page import="com.human.project.domain.CommunityVO"%>
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

<jsp:include page="00_header.jsp"></jsp:include>
</head>
<body>
  <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>${meal.m_name }</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Shop Detail  -->
    <div class="shop-detail-box-main">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-5 col-md-6">
                    <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active"> <img class="d-block w-100" src="images/imgMeal/${meal.m_name }.png" alt="First slide"> </div>
<!--                             <div class="carousel-item"> <img class="d-block w-100" src="images/big-img-02.jpg" alt="Second slide"> </div> -->
<!--                             <div class="carousel-item"> <img class="d-block w-100" src="images/big-img-03.jpg" alt="Third slide"> </div> -->
                        </div>
                        <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev"> 
						<i class="fa fa-angle-left" aria-hidden="true"></i>
						<span class="sr-only">Previous</span> 
					</a>
                        <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next"> 
						<i class="fa fa-angle-right" aria-hidden="true"></i> 
						<span class="sr-only">Next</span> 
					</a>
                        <ol class="carousel-indicators" style="background-color: transparent; top:5px;">
                            <li data-target="#carousel-example-1" data-slide-to="0" class="active">
                                <img class="d-block w-100 img-fluid" src="images/imgMeal/${meal.m_name }.png" alt="" />
                            </li>
<!--                             <li data-target="#carousel-example-1" data-slide-to="1"> -->
<!--                                 <img class="d-block w-100 img-fluid" src="images/smp-img-02.jpg" alt="" /> -->
<!--                             </li> -->
<!--                             <li data-target="#carousel-example-1" data-slide-to="2"> -->
<!--                                 <img class="d-block w-100 img-fluid" src="images/smp-img-03.jpg" alt="" /> -->
<!--                             </li> -->
                        </ol>
                    </div>
                </div>
<!--                 <form action="99_go_cart.do"> -->
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="single-product-details">
                        <h2 id="meal_name">${meal.m_name }</h2>
                        <div class="table-main table-responsive" style="overflow:scroll; width:100%; height: 350px;">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>필수재료</th>
                                        <th>단가</th>
                                        <th>수량</th>
                                        <th>가격</th>
                                    </tr>
                                </thead>
                                <tbody>

									<c:forEach items="${req}" var="item">
                                     <tr id="req${item.req_cnt }" class="req"> 
                                        <td class="name-pr">

                                           <a href="#"> ${item.i_name} </a>
                                        </td>
                                        <td class="price-pr">
                                            <p> ${item.i_price} </p>
                                        </td> 
                                        <td class="quantity-box">
                                        <input type="number" size="4" value="1" min="1" step="1" class="c-input-text qty text">
                                        </td>
                                        <td class="total-pr">
                                            <p> ${item.i_price}</p>
                                        </td>				
									</tr>
									</c:forEach>

                                </tbody>
                            </table>
                        </div>

                        <div class="table-main table-responsive" style="overflow:scroll; width:100%; height: 350px;">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>기본재료</th>
                                        <th>단가</th>
                                        <th>수량</th>
                                        <th>가격</th>
                                    </tr>
                                </thead>
                                <tbody>
									<c:forEach items="${base}" var="item">
                                     <tr id="base${item.base_cnt }" class="base"> 
                                        <td class="name-pr">

                                           <a href="#"> ${item.i_name} </a>
                                        </td>
                                        <td class="price-pr">
                                            <p> ${item.i_price} </p>
                                        </td> 
                                        <td class="quantity-box">
                                        <input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text">
                                        </td>
                                        <td class="total-pr">
                                            <p> ${item.i_price}</p>
                                        </td>				
									</tr>
									</c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="name-pr" style="text-align: center;">
                                          			  총 구매금액
                                          </th>
                                          
       
                                          <th class="total-pr" style="text-align: center;">
                                              <span id="all-price">${meal.m_price }</span>원
                                          </th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        
                       

						
						<form action="#" method="post">
						<div class="price-box-bar" >
							<div class="cart-and-bay-btn">
								<input type="hidden" name="m_name" value="${meal.m_name }">
								<input type="hidden" id="cart-price" name="m_price" value="${meal.m_price }">
								<input type="hidden" id="sellCnt" name="m_sell_cnt" value="1">
								<button type="submit" class="btn hvr-hover go-paymeal" style="height:44px; font-weight: bolder; color:white;">구매하기</button>
								<button type="submit" class="btn hvr-hover go-cartaddmeal" style="height:44px; font-weight: bolder; color:white;">장바구니 담기</button>
							</div>
						</div>
						</form>
						
                    </div>
                </div>
<!--           </form> -->
         </div>
         
            
            <table class="table-bordered" style="width: 100%; text-align: center;">
                <tr>
                    <td><button  class="btn hvr-hover nav-link pD-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품상세</button> </td>
                    <td><button  class="btn hvr-hover nav-link pR-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품후기</button> </td>
                    <td><button  class="btn hvr-hover nav-link pQ-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품문의</button> </td>
                    <td><button  class="btn hvr-hover nav-link pE-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">교환 및 반품 안내</button> </td>
                </tr>
            </table>

            <!-- 상품상세정보 -->
            <div id="productDetail" class="row my-5" style="display: block;">
                <div class="card card-outline-secondary my-4" >
					<div class="card-header">
						<h2>상품 상세</h2>
                        
                        
					</div>
					<div>
						<img src="images/imgMeal/${meal.m_name}1.png">
                    </div>
				  </div>
            </div>
                   

            
			<div id="productReview" class="row my-5" style="display: none;">
				<div class="card card-outline-secondary my-4" >
					<div class="card-header">
						<h2>상품 후기</h2>
					</div>
					<c:forEach items="${commuList }" var="commu" begin="0" end="5">
					<c:if test="${commu.ctg_id == 4000 }">
					<div class="card-body">
						<div class="media mb-3">
							<div class="mr-2"> 
								<a href="01_communityView.do?c_id=${commu.c_id }"><img class="rounded-circle border p-1" src="images/imgMeal/${commu.m_name }.png" style="width: 64px; height: 64px;" alt=""></a>
							</div>
							<div class="media-body">
								<p>${commu.c_title }</p>
								<small class="text-muted">${commu.c_date }</small>
							</div>
						</div>
						<hr>				
					</div>
					</c:if>
					</c:forEach>
					</div>
					<c:forEach items="${commuList }" var="commu" varStatus="status">
						<c:if test="${status.last }">
						<a href="98_communityList3.do?ctg_id=4000&m_name=${commu.m_name }" class="btn hvr-hover">${commu.m_name } 후기들보기</a>
						</c:if>
				  	</c:forEach>
				  		<a href="99_communitiyList.do?ctg_id=4000" class="btn hvr-hover">후기글 전체보기</a>
				  </div>

            <div id="productQnA" class="row my-5" style="display: none;">
				<div class="card card-outline-secondary my-4" >
					<div class="card-header">
						<h2>상품 문의</h2>
					</div>
					<c:forEach items="${qnaList }" var="qna" begin="0" end="5">
					<c:if test="${qna.ctg_id == 5000 }">
					<div class="card-body">
						<div class="media mb-3">
							<div class="mr-2"> 
								<img class="rounded-circle border p-1" src="images/imgMeal/${qna.goods }.png" style="width: 64px; height: 64px;" alt="">
							</div>
							<div class="media-body">
								<p>${qna.q_title }</p>
								<small class="text-muted">${qna.q_date }</small>
							</div>
						</div>
						<hr>				
					</div>
					</c:if>
					</c:forEach>
					</div>
				  </div>
            

            <div id="productExchange" class="row my-5" style="display: none;">
				<div class="card card-outline-secondary my-4">
					<div class="card-header">
						<h2>교환 및 반품 안내</h2>
					</div>
					<div class="card-body">
						<div class="media mb-3">
							
							<div class="media-body">
								<h4>교환 및 반품 주소</h4>
								

- [16471] 경기도 수원시 팔달구 인계동 번지 신관 3층 208-5 KR 풍림빌딩<br><br>


<h4>교환 및 반품이 가능한 경우</h4>

- 제품에 배송중에 문제가 있는 경우, 왼쪽 네이버톡톡으로
  배송받으신 당일에 사진이나 영상과 함께 접수해주시면
  확인 후 환불 및 재발송해드립니다.<br><br>

<h4>교환 및 반품이 불가능한 경우</h4>
- 신선식품의 특성상 단순변심에 의한 교환 및 환불은 어렵습니다.<br>
- 제품 수령 후 보관중에 발생한 변질 파손에 대해서는 교환 및 환불이 어렵습니다.<br>
- 고객센터 문의없이 임의로 택배접수하여 교환 및 반품을 보내시는경우 통보없이 반송될수있습니다.<br>
							</div>
						</div>
					
						
					</div>
				  </div>
			</div>
            
            <table class="table-bordered" style="width: 100%; text-align: center;">
                <tr>
                    <td><button  class="btn hvr-hover nav-link pD-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품상세</button> </td>
                    <td><button  class="btn hvr-hover nav-link pR-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품후기</button> </td>
                    <td><button  class="btn hvr-hover nav-link pQ-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">상품문의</button> </td>
                    <td><button  class="btn hvr-hover nav-link pE-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">교환 및 반품 안내</button> </td>
                </tr>
            </table>

          
    <!-- End Cart -->
<jsp:include page="00_footer.jsp"></jsp:include>	
</body>
<script>


</script>
</html>