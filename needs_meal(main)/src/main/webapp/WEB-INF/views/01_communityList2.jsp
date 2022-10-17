<%@page import="com.human.project.domain.CommunityVO"%>
<%@page import="com.human.project.domain.UsersVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.human.project.*" %>
<% String ctg = request.getParameter("ctg_id");
	int ctg_num = Integer.parseInt(ctg);
	
	switch (ctg_num){
		case 3001:
			ctg = "잡담";
			break;
		case 3002:
			ctg = "메뉴추천";
			break;
		case 3003:
			ctg = "꿀팁";
			break;
		case 4000:
			ctg = "상품후기";
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
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>
 <!-- Start All Title Box -->
    <div class="all-title-box com-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="ctg-name">커뮤니티</h2>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Contact Us  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                 <!-- 카테고리부분 -->
				<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                    <div class="product-categori">
                        <div class="search-product">
                            <form action="#">
                                <input class="form-control" placeholder="Search here..." type="text">
                                <button type="submit"> <i class="fa fa-search"></i> </button>
                            </form>
                        </div>
                        <div class="filter-sidebar-left">
                            <div class="title-left">
                                <h3>커뮤니티</h3>
                            </div>
                            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item commu list-group-item-action" href="#sub-men1" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men1"> 자유게시판</a>
                                    <div class="collapse" id="sub-men1" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="99_communitiyList.do?ctg_id=3001" class="list-group-item list-group-item-action"> 잡담 </a>
                                            <a href="99_communitiyList.do?ctg_id=3002" class="list-group-item list-group-item-action"> 메뉴추천 </a>
                                            <a href="99_communitiyList.do?ctg_id=3003" class="list-group-item list-group-item-action"> 꿀팁 </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item commu list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">상품후기</a>
                                    <div class="collapse show" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="99_communitiyList.do?ctg_id=4000" class="list-group-item list-group-item-action"> 전체상품후기 </a>
                                            <a href="99_communitiyList.do?ctg_id=4000" class="list-group-item list-group-item-action"> 내가쓴글 </a>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 게시판 -->
                <div class="col-lg-8 col-sm-12">
                    <div class="contact-form-right">
                        <h2>자유게시판 <a href="01_commuAdd.do"><input type="button" value="글쓰기"></a></h2>
                        <table class="boardTable">
                            <tr>
                                <th> ID </th>
                                <th> 구분 </th>
                                <th> 작성자 </th>
                                <th> 제목 </th>
<!--                                 <th> 추천수 </th> -->
                                <th> 조횟수 </th>
                                <th> 작성일 </th>
                            </tr>
			                <c:forEach items="${CommuList }" var="commu">
							<tr>
								<td>${commu.ctg_id }${commu.c_id }</td>
								<td>${commu.ctg_name }</td>
								<td>${commu.u_id }</td>					
								<td>${commu.c_title }</td>					
								<td>${commu.c_cnt }</td>					
								<td>${commu.c_date }</td>
								</tr>
							</c:forEach> 
                        </table>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- End Cart -->

 
<jsp:include page="00_footer.jsp"></jsp:include>

</body>
</html>