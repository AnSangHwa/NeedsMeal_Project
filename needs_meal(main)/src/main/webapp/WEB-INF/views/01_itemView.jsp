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
<jsp:include page="00_header.jsp"></jsp:include>
</head>
<body>
  <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>${item.i_name }</h2>
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
                            <div class="carousel-item active"> <img class="d-block w-100" src="images/imgMeal/${item.i_name }.png" alt="First slide"> </div>
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
                                <img class="d-block w-100 img-fluid" src="images/imgMeal/${item.i_name }.png" alt="" />
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
                        <h2 id="meal_name">${item.i_name }</h2>
                        <div class="table-main table-responsive" style="overflow:scroll; width:100%; height: 350px;">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>?????????</th>
                                        <th>??????</th>
                                        <th>??????</th>
                                        <th>??????</th>
                                    </tr>
                                </thead>
                                <tbody>
                                     <tr id="req${item.req_cnt }" class="req"> 
                                        <td class="name-pr">

                                           <a href="#"> ${item.i_name} </a>
                                        </td>
                                        <td class="price-pr">
                                            <p> ${item.i_price} </p>
                                        </td> 
                                        <td class="quantity-box">
                                        <input id="sellCnt" type="number" size="4" value="1" min="1" step="1" class="c-input-text qty text">
                                        </td>
                                        <td class="total-pr">
                                            <p> ${item.i_price}</p>
                                        </td>				
									</tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="name-pr" style="text-align: center;">
                                          			  ??? ????????????
                                          </th>
                                          
       
                                          <th class="total-pr" style="text-align: center;">
                                              <span id="all-price">${item.i_price}</span>???
                                          </th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                        
                       

						
						<form action="#" get="post">
						<div class="price-box-bar" >
							<div class="cart-and-bay-btn">
								<input type="hidden" name="i_name" value="${item.i_name}">
								<input type="hidden" name="i_id" value="${item.i_id}">
								<input id="sell_cnt" type="hidden" name="i_sell_cnt" value="1" >
								<input type="hidden" id="cart-price" name="i_price" value="${item.i_price}">
								<button type="submit" class="btn hvr-hover go-payitem" style="height:44px; font-weight: bolder; color:white;">????????????</button>
								<button type="submit" class="btn hvr-hover go-cartadditem" style="height:44px; font-weight: bolder; color:white;">???????????? ??????</button>
							</div>
						</div>
						</form>
						
                    </div>
                </div>
<!--           </form> -->
         </div>
         
            
            <table class="table-bordered" style="width: 100%; text-align: center;">
                <tr>
                    <td><button  class="btn hvr-hover nav-link pD-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pR-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pQ-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pE-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">?????? ??? ?????? ??????</button> </td>
                </tr>
            </table>

            <!-- ?????????????????? -->
            <div id="productDetail" class="row my-5" style="display: block;">
                <div class="card card-outline-secondary my-4" >
               <div class="card-header">
                  <h2>?????? ????????? ???????????? ?????????</h2>
                        
                        
               </div>
               <div>
                        <div class="col-xl-10 col-lg-10 col-sm-10 col-xs-10 ">
                        <div class="product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
                              <c:forEach items="${MealList }" var="meal">
                                       <div class="col-sm-6 col-md-6 col-lg-2 col-xl-3" >
                                            <form action="01_productView.do" method="post">
                                                <button type="submit" class="btn" border="0px">
                                               <div class="products-single fix" >
                                                   <div class="box-img-hover" >
                                                       <div class="type-lb">
                                                           <p class="new">new</p>
                                                       </div>
                                                       <img src="images/imgMeal/${meal.m_name }.png" class="img-fluid" alt="Image" id="rowcursor">
                                                       </a>
                                                   </div>
                                                   <div class="why-text" id="why-text">
                                                       <h4 id="rowcursor">${meal.m_name }</h4>
                                                       <input type="hidden" name="m_name" value="${meal.m_name }">
                                                       <input type="hidden" name="i_id_req" value="${meal.i_id_req }">
                                                       <input type="hidden" name="i_id_base" value="${meal.i_id_base }">
                                                       <span><h5> ${meal.m_price } ???</h5></span>
                                                       <span id="discount"> ${meal.m_price }???</span>
                                                       <div class="review option">
                                                           <span>?????? ${meal.m_review_cnt }</span>                                                  
                                                       </div> 
                                                   </div>
                                               </div>
                                               </button>
                                           </form>
                                       </div>
                                 </c:forEach>
                                 </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
              </div>
            </div>
                   

            
			<div id="productReview" class="row my-5" style="display: none;">
				<div class="card card-outline-secondary my-4" >
					<div class="card-header">
						<h2>?????? ??????</h2>
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
						<a href="98_communityList3.do?ctg_id=4000&m_name=${commu.m_name }" class="btn hvr-hover">????????? ????????????</a>
				  </div>

            <div id="productQnA" class="row my-5" style="display: none;">
				<div class="card card-outline-secondary my-4" >
					<div class="card-header">
						<h2>?????? ??????</h2>
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
						<h2>?????? ??? ?????? ??????</h2>
					</div>
					<div class="card-body">
						<div class="media mb-3">
							
							<div class="media-body">
								<h4>?????? ??? ?????? ??????</h4>
								

- [16471] ????????? ????????? ????????? ????????? ?????? ?????? 3??? 208-5 KR ????????????<br><br>


<h4>?????? ??? ????????? ????????? ??????</h4>

- ????????? ???????????? ????????? ?????? ??????, ?????? ?????????????????????
  ??????????????? ????????? ???????????? ????????? ?????? ??????????????????
  ?????? ??? ?????? ??? ????????????????????????.<br><br>

<h4>?????? ??? ????????? ???????????? ??????</h4>
- ??????????????? ????????? ??????????????? ?????? ?????? ??? ????????? ???????????????.<br>
- ?????? ?????? ??? ???????????? ????????? ?????? ????????? ???????????? ?????? ??? ????????? ???????????????.<br>
- ???????????? ???????????? ????????? ?????????????????? ?????? ??? ????????? ?????????????????? ???????????? ????????????????????????.<br>
							</div>
						</div>
					
						
					</div>
				  </div>
			</div>
            
            <table class="table-bordered" style="width: 100%; text-align: center;">
                <tr>
                    <td><button  class="btn hvr-hover nav-link pD-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pR-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pQ-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">????????????</button> </td>
                    <td><button  class="btn hvr-hover nav-link pE-btn" style="font-size: 18px; font-weight: bolder; width: 100%; height: 100%; color: white; background-color: #b0b435;">?????? ??? ?????? ??????</button> </td>
                </tr>
            </table>

          
        </div>
    </div>
    <!-- End Cart -->
<jsp:include page="00_footer.jsp"></jsp:include>	
</body>
<script>
	$('#sellCnt').change(function(){
		 $('#sell_cnt').val($('#sellCnt').val());	
		
	})

</script>
</html>