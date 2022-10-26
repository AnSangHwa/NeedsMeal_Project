<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/customer_question_viewing.css">
</head>

<body>
 <section class="page_core">
        <div class="page_core_container">
            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
                
            </div>
            <br>
            <br>

            <div class="page_element_buttom">
                <!-- <div class="text_style_head">고객문의 리스트</div> -->
                <br>
                <table>
                    <thead>
                        <tr>
                            <th class="table_head th_">문의번호</th>
                            <th class="table_head th_">제목</th>
                            <th class="table_head th_">문의날짜</th>
                        </tr>
                    </thead>
                    <tbody>
                   	<c:forEach items="${qnaList}" var="qna">
						<tr>
							<td>${qna.q_id}</td>
							<td style="text-align: left"><a style="color: white;" href="04_adminQnAView.do?q_id=${qna.q_id}">${qna.q_title }</a></td>
							<td>${qna.q_date }</td>						
						</tr>	
					</c:forEach>	
                    </tbody>
                </table>


            </div>
        </div>
    </section>

 
</body>


</html>