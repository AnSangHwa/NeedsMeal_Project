<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>

    <body>
        <jsp:include page="00_header.jsp"></jsp:include>
        
        
        <div class="my-account-box-main">
        <div class="container">
            <div class="row">
            <div class="col-lg-3">
                <div class="mypage">
                    <h3>마이페이지</h3>
                    <ul>
                        <li><a href="02_MyPage.do">홈으로 </a></li>    
                            <li><a href="02_orderList.do"> 주문목록/배송조회 </a></li>    
                            <li><a href="02_insertMypass.do"> 회원정보변경 및 탈퇴 </a></li>        
                            <li><a href="02_productQnAList.do"> 고객문의 </a></li>    
                            <li><a href="02_productReview.do"> 나의 상품후기 </a></li>
                        
                    </ul>
                </div>           
            </div>
            
          
        
        
       <div class="col-lg-9 col-sm-12" >
                    <div class="contact-form-right view-page">
                    	<table>
                    		<tr>
                    			<th><h1>고객문의</h1></th>
                    		</tr>
                    		<tr style="height: 30px;">
                    			<td class="review_title">
                    			<span class="title-size">${qna.q_title}</span>
                    			</td>
                    		</tr>
                    		<tr>
                    			<td class="review_info">
					           <span id="user" class="buyer_type">${qna.u_id}</span>
					           <span class="review_word_divider">&nbsp;&nbsp;|&nbsp;&nbsp;</span>
					           <span class="review_generated_time">${qna.q_date}</span>
                    		</tr>
                    		<c:if test="${qna.goods != '없음' }">
                    		<tr>
	                    		<td><img src="images/imgMeal/${qna.goods }.png" style="width: 100px; height: 100px;">
                    			<span>${qna.goods }</span></td>
                    		</tr>
                    		</c:if>
                    		<tr>
                    			<td class="commu-table"><div id="commu-content"><br>${qna.q_content}</div></td>
                    		</tr>
                    		 
                    	</table>
                    	<br>
                    	<div class="comment_count_area">
        				</div>
                    	
                    	<input id="modifyBtn" type="button" value="수정" onclick="modifyBtn()"> 
	      				<input id="deleteBtn" type="button" value="삭제" onclick="deleteBtn()"> 
	      				<input class="btn_to_go_to_list" type="button" value="목록" onclick="location.href = '02_productQnAList.do'">
                    		
    
                    </div>
                </div>
             </div>
             </div>
             </div>
             
        
		
		
   
        <jsp:include page="00_footer.jsp"></jsp:include>
    </body>
		<script>
		let user = $('#user').text().trim().split("|")[0].trim();
		
		if(user == "admin"){
			$('#modifyBtn').hide();
			$('#deleteBtn').hide();
			
		}
		
		function deleteBtn(){
			let pwd = "${sessionScope.u_pwd}"
			let check = prompt("비밀번호를 입력해주세요");
			
			if(pwd == check){
				
				location.href="deleteQnA.do?q_id=${qna.q_id}";
				alert("삭제되었습니다.");
			}else{
				alert("비밀번호가 틀렸습니다.");
			}
			
			
		}
		
		function modifyBtn(){
			let pwd = "${sessionScope.u_pwd}"
				let check = prompt("비밀번호를 입력해주세요");
				
				if(pwd == check){
					
					location.href="02_modifyQnAForm.do?q_id=${qna.q_id}";
				
				}else{
					alert("비밀번호가 틀렸습니다.");
				}
				
			
			
		}
		
		let result = "${result}"
	
		if(result == "1"){
			$("#modifyBtn").val("답변완료");
			$("#modifyBtn").attr("disabled","disabled");
			
		}
		
		
		</script>
    </html>