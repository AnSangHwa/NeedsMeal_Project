<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>
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
            <div class="col-lg-9">
                <div class = "my-info-QnA">
                    <h1>고객문의 </h1>
                </div>




        <div class="container main-body">
        	<form action="modifyQnA.do" method="get">
            <div class="top-title">
                <h1>1:1 문의</h1>
            </div>
            <hr>
            <div>
                   <div class="row line">
                      
                   </div>  
                  <input type="hidden" name="q_id" value="${qna.q_id}">
                   <div class="row line">
                   		
                        <div class="col-2">제목</div>
                        <div class="col-3">
                            <input class="textbox" name="q_title" type="text" value="${qna.q_title}">
                        </div>
                    </div>
                 
                  
                    
                    <div class="row line">
                        <div class="col-2 item align-self-center">본문</div>
                        <div class="col-10 ">
                         <textarea  id="editorTxt" cols="50" rows="15"></textarea>
                         <input type="hidden" id="e-content" name="q_content">
                        </div>
                    </div>
                        

                        <div class="row line">
                            <div class="col-2 file">첨부파일</div>

                            <input  class="textbox" type="text">
                            &nbsp;&nbsp;&nbsp;
                            <button type="button">찾아보기</button>
                            &nbsp;&nbsp;&nbsp;
                            <button type="button">추가</button>
                           
                            <!-- <div class="col-3">
                                <input type="text">
                            </div>
                            
                            <div class="col-3">
                                <button>찾아보기</button>
                            </div>

                            <div class="col-3">
                                <button>추가</button>
                            </div> -->
                          
                        </div>
                       


                 
                </div>    
           
   

         
            <div class="row">
                <div class="col-6 btn-back filter-button-group">
                    <button type="button" onclick="location.href='02_MyPage.do'">이전</button>
                </div>
               
                <div class="col-6 btn-save filter-button-group" >
                    <button type="submit">수정</button>
                </div> 
            </div> 
        						
		</form>
        </div></div></div>	
            

        </div>
        </div>

</body>
<jsp:include page="00_footer.jsp"></jsp:include>
</html>