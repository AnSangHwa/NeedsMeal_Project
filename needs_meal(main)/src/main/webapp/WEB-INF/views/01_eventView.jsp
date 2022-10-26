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
 

    <!-- Start Contact Us  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                
                <!-- 게시판 -->
                <div class="col-lg-9 col-sm-12">
                    <div class="contact-form-right view-page">
                    	<table>
                    		<tr>
                    			<th><h1>이벤트</h1></th>
                    		</tr>
                    		<tr style="height: 30px;">
                    			<td class="review_title">
                    			<span class="title-size">${Event.e_name }</span>
                    			                   			
                    		
                    			</td>
                    		</tr>
                    		<tr>
                    			<td class="review_info">
					           <span class="buyer_type">admin</span>
					           <span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
					           <span class="review_generated_time">${Event.e_start}</span>
					          					           
                    		</tr>
                    		<tr>
                    			<td class="commu-table"><br>${Event.e_content }
                    			
                    			
                    			
                    			</td>
                    		</tr>
                    		
                    		
                    	</table>
                    	<br>
                    	<div class="comment_count_area">
        
        				</div>
    
                    </div>
                </div>
               
            </div>
        </div>
    </div>
    <!-- End Cart -->

 
<jsp:include page="00_footer.jsp"></jsp:include>
</body>
</html>