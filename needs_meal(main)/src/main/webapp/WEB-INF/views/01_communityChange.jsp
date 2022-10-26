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
        <div class="container main-body">
        	<form action="#" method="post">
            <div class="top-title">
                <h1>글수정/글삭제</h1>
            </div>
            <hr>
                    <table class="change-commu">
                    	<tr>
	                       <td> 카테고리 </td>
	                       <td>${Commu.ctg_name }</td>
                    	</tr>
                    	<c:if test="${Commu.m_name != '없음' }">
                    	<tr class="review-name">
	                       <td> 리뷰상품 </td>
	                       <td>     
	                            <input type="text" name="review-goods" value="${Commu.m_name }" readonly>
	                       </td>
	                    </tr> 
                    	</c:if>
                        <tr>
                            <td><input type="hidden" name="m_name" value="${Commu.m_name }"></td>
                		</tr>
                  		<tr style="display: none;">
                  			<td><input class="textbox" type="hidden" name="u_id" value="${u_id }"></td>
                  			<td><input class="textbox" type="hidden" name="c_id" value="${Commu.c_id }"></td>
                  		</tr>
                  		<tr>
                  			<td>제목</td>
                  			<td><input name="c_title" type="text" style="width: 500px;" value="${Commu.c_title }"></td>
                  		</tr>
                  		<tr>
                  			<td class="item align-self-center">본문</td>
                  			<td>
		                         <textarea  id="editorTxt" cols="50" rows="15">${Commu.c_content }</textarea>
		                         <input type="hidden" id="e-content" name="c_content" value="">
		                    </td>
                  		</tr>
                  		<tr>
                  			<td colspan="2" style="text-align: center;"><button type="submit" id="commu-update">수정하기</button><button type="submit" id="commu-delete">삭제하기</button></td>
                  		</tr>
                    </table>
		</form>
</div>    


         
          
            


</body>
<jsp:include page="00_footer.jsp"></jsp:include>
</html>