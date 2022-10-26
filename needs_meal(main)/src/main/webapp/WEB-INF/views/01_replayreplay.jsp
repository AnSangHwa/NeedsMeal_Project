<%@page import="com.human.project.domain.CommunityVO"%>
<%@page import="com.human.project.domain.UsersVO"%>
<%@page import="com.human.project.domain.ReplayVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.human.project.*" %>

<c:forEach items="${ReplayReplayList}" var="replayreplay">
	<c:if test="${ replay.r_id == replayreplay.r_group }">
	<tr>
		<td class="commu-table replyList">
			<p>ㄴ</p>
		   	<span class="buyer_type">${replayreplay.u_name}</span>
			<span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
			<span class="review_generated_time">${replayreplay.r_date}</span><button class="login-commu reply-show${status.count}" type="button" style="border: 0px; background:white; font-size:10px; height: 24px;">답글쓰기</button><br>
			<span class="replay-content">${replayreplay.r_content}</span>
			<a href="01_replayreplay.do?c_id=${replayreplay.c_id }&r_group=${replayreplay.r_id }"> 답글에 답글리스트보기</a>
			<c:if test="${replayreplay.u_id == u_id }">
				<form action="#" method="post">						           	   
          		   <input type="hidden" class="replay-r_content-change" name="r_content" value="${replay.r_content }">
          		   <input type="hidden" name="r_group" value="${replay.r_id }">
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
				<input type="hidden" name="r_id" value="${replayreplay.r_id }">
				<input type="hidden" name="c_id" value="${replayreplay.c_id }">
			</form>
		</td>
	</tr>
	</c:if>
</c:forEach> 
