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
        <H1 class="head_word">상품후기</H1>
        <div class="review_title">${reView.c_title}</div>
        <div class="review_info">
            <span class="buyer_type">${reView.u_id}</span><span
                class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span><span
                class="review_generated_time">${reView.c_date}</span><span
                class="review_count_marker">조회수</span><span class="review_count">${reView.c_cnt}</span>
        </div>
        <div class="review_product_info row">
            <div class="col-md-2">
                <img class="" src="images/default_food_img_ex_hamberger.PNG" alt="(사진을 업데이트하세요)">
            </div>
            <div class="col-md-6">
                <div class="">
                    <div class="img_explanation_line_first">100% Beef 정통 미국식 수제 치즈 햄버거 밀키트(3인분/740g)</div>
                </div>
                <div class="">
                    <div class="img_explanation_line_second">판매금액 15,900원</div>
                </div>
            </div>
        </div>
        <div class="main_review">${reView.c_content}</div>
        <div class="comment_count_area">
            <span class="comment_count_marker">총 댓글&nbsp;</span><span class="comment_count">0</span>
        </div>
        <br> <input class="comment_area" type="text" placeholder="로그인을 하셔야 댓글을 등록하실 수 있습니다." name="(미정된_사항)"></input>
        <br>
        <input class="btn_to_go_to_list" type="button" value="목록" onclick="location.href = '02_productReview.do'"></input>
    </div>
        <jsp:include page="00_footer.jsp"></jsp:include>
    </body>

    </html>