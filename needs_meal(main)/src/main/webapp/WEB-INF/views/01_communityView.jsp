<%@page import="com.human.project.domain.CommunityVO"%>
<%@page import="com.human.project.domain.UsersVO"%>
<%@page import="com.human.project.domain.ReplayVO"%>
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
                            <form action="99_serchCommu.do">
                                <input class="form-control" placeholder="Search here..." name="serch" type="text">
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
                                    <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <a href="99_communitiyList.do?ctg_id=4000" class="list-group-item list-group-item-action"> 전체상품후기 </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="list-group-collapse sub-men">
                                    <a class="list-group-item commu list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">내글보기</a>
                                    <div class="collapse show" id="sub-men3" data-parent="#list-group-men">
                                        <div class="list-group">
                                            <form action="99_myReviewList.do" method="post">
                                            <input type="hidden" value="${u_id }"> 
                                            <button type="submit" class="list-group-item list-group-item-action user-loginOK"> 내가쓴글 </button>
                                        	</form>
                                        </div>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 게시판 -->
                <div class="col-lg-9 col-sm-12">
                    <div class="contact-form-right view-page">
                    	<table>
                    		<tr>
                    			<th><h1>${Commu.ctg_name }</h1></th>
                    		</tr>
                    		<tr style="height: 30px;">
                    			<td class="review_title">
                    			<span class="title-size">${Commu.c_title }</span>
                    			<c:if test="${Commu.u_id == u_id }">
                    			<a href="01_communityChange.do?c_id=${Commu.c_id }" style="border: 0px; float: right;">수정하기 </a>
                    			</c:if>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td class="review_info">
					           <span class="buyer_type">${Commu.u_name}</span>
					           <span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
					           <span class="review_generated_time">${Commu.c_date }</span>
					           <span class="review_generated_time" id="go-write">조회수 ${Commu.c_cnt }</span>
					           <span class="review_word_divider" id="go-write">|</span>
                    		</tr>
                    		<c:if test="${Commu.m_name != '없음' }">
                    		<tr>
	                    		<td><img src="images/imgMeal/${Commu.m_name }.png" style="width: 100px; height: 100px;">
                    			<span>${Commu.m_name }</span></td>
                    		</tr>
                    		</c:if>
                    		<tr>
                    			<td class="commu-table"><div id="commu-content">
                    			${Commu.c_content }</div></td>
                    		</tr>
                    		<tr>
                    			<td>
                    			<form class="reply" action="99_reply.do">
					        		<input class="comment_area login-commu" type="text" name="r_content" style="width: 85%" placeholder="댓글을 작성해주세요." >
					        		<input type="submit" class="btn btn-secondary" style="width: 15%; height: 50px; float: right;" value="댓글달기" >
					        		<input type="hidden" name="u_id" value="${u_id }">
					        		<input type="hidden" name="c_id" value="${Commu.c_id }">
						       </form>
                    			</td>
                    		</tr>
                    		<c:forEach items="${ReplayList }" var="replay"  varStatus="status">
                    			<c:if test="${status.last }">              				
                    		<tr>
                    			<td class="commu-table"><span>총 댓글&nbsp;</span><span class="comment_count">${status.count}</span></td>
                    		</tr>
                    			</c:if>
                    		</c:forEach> 
                   			<c:forEach items="${ReplayList }" var="replay" varStatus="status">
                    		<tr>
                    			<td class="commu-table replyList">
                    			   <span class="buyer_type">${replay.u_name}</span>
						           <span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
						           <span class="review_generated_time">${replay.r_date }</span><button class="login-commu reply-show${status.count}" type="button" style="border: 0px; background:white; font-size:10px; height: 24px;">답글쓰기</button>
						           <a href="01_replayreplay.do?c_id=${Commu.c_id }&r_group=${replay.r_id}"><button type="button" style="border: 0px; background:white; font-size:10px; height: 24px;"> 답글보기</button></a><br>
						           <span class="replay-content">${replay.r_content }</span>
						           
						           <c:if test="${replay.u_id == u_id }">
						           	   <form action="#" method="post">						           	   
						           		   <input type="hidden" class="replay-r_content-change" name="r_content" value="${replay.r_content }">
						           		   <input type="hidden" name="r_id" value="${replay.r_id }">
						           		   <input type="hidden" name="u_id" value="${u_id }">
					        			   <input type="hidden" name="c_id" value="${Commu.c_id }">
								           <button type="button" class="reply-back" style="border:1px solid black; display:none; font-size:10px; height: 24px; float: right;">취소하기</button>
								           <button type="button" class="reply-delete" style="border:1px solid black; display:none; font-size:10px; height: 24px; float: right;">삭제하기</button>
								           <button type="button" class="reply-update" style="border:1px solid black; display:none; margin-right:1px; font-size:10px; height: 24px; float: right;">수정하기</button>
								           <button type="button" class="reply-showbutton" style="border:1px solid black; margin-right:1px; font-size:10px; height: 24px; float: right;">수정하기</button>
	                    		  	   </form>
	                    		   </c:if>
                    			</td>
                    		</tr>
							<tr class="reply-reply${status.count}" style="display: none"><!-- 답글 버튼 -->
								<td>
									<form class="reply-addreply" action="98_reply.do">
										<input class="comment_area login-commu" type="text" name="r_content" style="width: 85%" placeholder="답글을 작성해주세요." >
										<input type="submit" class="btn btn-secondary go-reply-reply" style="width: 15%; height: 50px; float: right;" value="답글달기" >
										<input type="hidden" name="u_id" value="${u_id }">
										<input type="hidden" name="r_id" value="${replay.r_id }">
										<input type="hidden" name="c_id" value="${Commu.c_id }">
									</form>
				        		</td>
							</tr>
								<c:forEach items="${ReplayReplayList}" var="replayreplay">
									<c:if test="${ replay.r_id == replayreplay.r_group }">
									<tr>
										<td class="commu-table replyList">
											<p style="display: inline-block;">ㄴ</p>
										   	<span class="buyer_type">${replayreplay.u_name}</span>
											<span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
											<span class="review_generated_time">${replayreplay.r_date}</span><br>
											<span class="replay-content">${replayreplay.r_content}</span>
											<c:if test="${replayreplay.u_id == u_id }">
												<form action="#" method="post">						           	   
									         		   <input type="hidden" class="replay-r_content-change" name="r_content" value="${replayreplay.r_content }">
									         		   <input type="hidden" name="r_id" value="${replayreplay.r_id }">
									         		   <input type="hidden" name="u_id" value="${u_id }">
									     			   <input type="hidden" name="c_id" value="${Commu.c_id }">
										           <button type="button" class="reply-back" style="border:1px solid black; display:none; font-size:10px; height: 24px; float: right;">취소하기</button>
										           <button type="button" class="reply-delete" style="border:1px solid black; display:none; font-size:10px; height: 24px; float: right;">삭제하기</button>
										           <button type="button" class="reply-update" style="border:1px solid black; display:none; margin-right:1px; font-size:10px; height: 24px; float: right;">수정하기</button>
										           <button type="button" class="reply-showbutton" style="border:1px solid black; margin-right:1px; font-size:10px; height: 24px; float: right;">수정하기</button>
									  		  	   </form>
											</c:if>
										</td>
									</tr>
									</c:if>
								</c:forEach> 
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