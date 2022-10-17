<%@page import="com.human.project.domain.MealVO"%>
<%@page import="com.human.project.domain.ItemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.human.project.*" %>
<% String ctg = request.getParameter("ctg_id");
	int ctg_num = Integer.parseInt(ctg);
	
	switch (ctg_num){
		case 2001:
			ctg = "채소";
			break;
		case 2002:
			ctg = "수산";
			break;
		case 2003:
			ctg = "육류";
			break;
		case 2004:
			ctg = "소스/육수";
			break;
		case 2005:
			ctg = "밑반찬";
			break;
		case 2006:
			ctg = "간식";
			break;
		case 2007:
			ctg = "면";
			break;
		case 2008:
			ctg = "그외";
			break;
		default:
			ctg = "재료";
			break;
	}; %>
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
                    <h2 class="ctg-name"><%=ctg %></h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->
 <div class="shop-box-inner">
<div class="container">
        <div class="row">
            <div class="col-xl-12 col-lg-12 col-sm-12 col-xs-12 shop-content-right">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-sm-2 col-xs-2 sidebar-shop-left">
                        <div class="product-categori">
                            <div class="search-product">
                                <form action="#">
                                    <input class="form-control" placeholder="Search here..." type="text">
                                    <button type="submit"> <i class="fa fa-search"></i> </button>
                                </form>
                            </div>
                            <div class="filter-sidebar-left">
                                <div class="title-left">
                                    <h3>밀키트</h3>
                                </div>
                                <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                    <div class="list-group-collapse sub-men">
                                        <a class="list-group-item commu list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men1"> 밀키트</a>
                                        <div class="collapse" id="sub-men1" data-parent="#list-group-men">
                                            <div class="list-group">
                                                <a href="99_mealCtgList.do?ctg_id=1001" class="list-group-item list-group-item-action"> 한식 </a>
                                                <a href="99_mealCtgList.do?ctg_id=1002" class="list-group-item list-group-item-action"> 양식 </a>
                                                <a href="99_mealCtgList.do?ctg_id=1003" class="list-group-item list-group-item-action"> 아시아 </a>
                                                <a href="99_mealCtgList.do?ctg_id=1004" class="list-group-item list-group-item-action"> 분식/야식 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-group-collapse sub-men">
                                        <a class="list-group-item commu list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men2">재료</a>
                                        <div class="collapse show" id="sub-men2" data-parent="#list-group-men">
                                            <div class="list-group">
                                                <a href="99_item_CtgList.do?ctg_id=2001" class="list-group-item list-group-item-action"> 채소 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2002" class="list-group-item list-group-item-action"> 수산 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2003" class="list-group-item list-group-item-action"> 육류 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2004" class="list-group-item list-group-item-action"> 소스/육수 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2005" class="list-group-item list-group-item-action"> 밑반찬 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2006" class="list-group-item list-group-item-action"> 간식 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2007" class="list-group-item list-group-item-action"> 면 </a>
                                                <a href="99_item_CtgList.do?ctg_id=2008" class="list-group-item list-group-item-action"> 그외 </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="list-group-collapse sub-men">
                                        <a class="list-group-item commu list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men3">HOT</a>
                                        <div class="collapse" id="sub-men3" data-parent="#list-group-men">
                                            <div class="list-group">
                                                <a href="#" class="list-group-item list-group-item-action"> 베스트상품 </a>
                                                <a href="#" class="list-group-item list-group-item-action"> 신메뉴 </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-10 col-sm-10 col-xs-10 ">
                        <div class="product-categorie-box">
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                    <div class="row">
	                                        <c:forEach items="${ItemList }" var="item">
	                                    <div class="col-sm-6 col-md-6 col-lg-2 col-xl-3" >
                                            <form action="01_itemView.do" method="post">
                                                <button type="submit" class="btn" border="0px">
	                                            <div class="products-single fix" >
	                                                <div class="box-img-hover" >
	                                                    <div class="type-lb">
	                                                        <p class="new">new</p>
	                                                    </div>
	                                                    <img src="images/imgMeal/${item.i_name }.png" class="img-fluid" alt="Image" id="rowcursor">
	                                                    </a>
	                                                </div>
	                                                <div class="why-text" id="why-text">
	                                                    <h4 id="rowcursor">${item.i_name }</h4>
	                                                    <input type="hidden" name="i_name" value="${item.i_name }">
	                                                    <input type="hidden" name="i_id" value="${item.i_id }">
	                                                    <input type="hidden" name="i_price" value="${item.i_price }">
	                                                    <span><h5> ${item.i_price } 원</h5></span>
	                                                    <span id="discount"> ${item.i_price } 원</span>
	                                                </div>
	                                            </div>
	                                            </button>
	                                        </form>
	                                    </div>
											</c:forEach>
<!-- <!--                                         ---------------------------여기서 컷 -->
                                     </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>
<jsp:include page="00_footer.jsp"></jsp:include>
</body>
</html>