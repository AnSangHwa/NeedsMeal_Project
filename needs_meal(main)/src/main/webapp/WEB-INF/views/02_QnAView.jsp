<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <jsp:include page="00_header.jsp"></jsp:include>

		
		
		    <div class="core_element">
        <H1 class="head_word">고객문의</H1>
        <div class="review_title">${qna.q_title}</div>
        <div class="review_info">
            <span class="buyer_type">${qna.u_id}</span><span
                class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span><span
                class="review_generated_time">${qna.q_date}</span>
        </div>
        
        <div class="main_review">${qna.q_content}</div>
        <div class="comment_count_area">
            <span class="comment_count_marker">총 댓글&nbsp;</span><span class="comment_count">0</span>
        </div>
        <form name="reply" action="02_QnAView.do">
        
	        <br> <input class="comment_area" type="text" name="r_content" style="width: 900px" placeholder="덧글을 작성해주세요." >
	        		<input type="submit" class="btn btn-secondary" style="width: 100px; height: 50px" value="덧글달기" >
	        		<input type="hidden" name="">
	        		<input type="hidden" name="">
	        		<input type="hidden" name="">
	        		<input type="hidden" name="">
	        <br>
        </form>
    
        <input class="btn_to_go_to_list" type="button" value="목록" onclick="location.href = '02_productReview.do'">
    </div>
        <jsp:include page="00_footer.jsp"></jsp:include>
    </body>

    </html>