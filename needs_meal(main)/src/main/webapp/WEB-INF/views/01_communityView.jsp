<%@page import="com.human.project.domain.CommunityVO"%>
<%@page import="com.human.project.domain.UsersVO"%>
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
                                    <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="99_communitiyList.do?ctg_id=3001" class="list-group-item list-group-item-action"> 잡담 </a>
                                            <a href="99_communitiyList.do?ctg_id=3002" class="list-group-item list-group-item-action"> 메뉴추천 </a>
                                            <a href="99_communitiyList.do?ctg_id=3003" class="list-group-item list-group-item-action"> 꿀팁 </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item commu list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">상품후기</a>
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
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
					       <H1 class="head_word">커뮤니티</H1>
					       <div class="review_title">제목</div>
					       <div class="review_info">
					           <span class="buyer_type">작성자</span>
					           <span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
					           <span class="review_generated_time">날짜</span>
					       </div>
					       
					       <div>내용</div>
					       <div>
					           <span>총 댓글&nbsp;</span><span class="comment_count">0</span>
					       </div>
					       <form action="#">
					       
					        <br> <input class="comment_area" type="text" name="r_content" style="width: 80%" placeholder="덧글을 작성해주세요." >
					        		<input type="submit" class="btn btn-secondary" style="width: 100px; height: 50px" value="덧글달기" >
					        		<input type="hidden" name="">
					        		<input type="hidden" name="">
					        		<input type="hidden" name="">
					        		<input type="hidden" name="">
					        <br>
					       </form>
    
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- End Cart -->

 
<jsp:include page="00_footer.jsp"></jsp:include>
</body>
</html>