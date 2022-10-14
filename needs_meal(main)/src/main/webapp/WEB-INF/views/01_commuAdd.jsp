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
        <div class="container main-body">
        	<form action="99_communityadd.do" method="post">
            <div class="top-title">
                <h1>글쓰기</h1>
            </div>
            <hr>
            <div>
         
                    
                   <div class="row line">
                       <div class="col-2"> 카테고리 </div>
                       <div class="col-3 ctg-select">     
                             <select>
                             <option value="3001">자유게시판</option>
                             <option value="4000">리뷰</option>
                             </select>
                             <input type="hidden" value="3001" id="ctg-save" name="ctg_id">
                       </div>
                   </div> 
                   <div class="row line free-ctg">
                       <div class="col-2"> 자유게시판 </div>
                       <div class="col-3 ctg-radio"> 
                       		 <select>
                             <option value="3001">잡담</option>
                             <option value="3002">메뉴추천</option>
                             <option value="3003">꿀팁</option>
                              </select>
                       </div>
                   </div>  
                   <div style="display: none;" class="row line review-name">
                       <div class="col-2"> 리뷰상품 </div>
                       <div class="col-3">     
                            <input type="text" id="review-m" name="" placeholder="상품명" style="width: 200px;">
                       </div>
                   </div> 
                   <div style="display: none;" class="row line inquiry-name">
                       <div class="col-2"> 문의상품 </div>
                       <div class="col-3">     
                            <input type="text" id="inquiry-m" name="" placeholder="상품명" style="width: 200px;">
                       </div>
                   </div> 
                   <div style="display: none;" class="row line free-name">
                       <div class="col-2"> 상품없음 </div>
                       <div class="col-3">     
                            <input type="text" value="없음" id="free-m" name="m_name" placeholder="상품명" style="width: 200px;">
                       </div>
                   </div> 
                 
                  <div class="col-3">                       
                      <input class="textbox" type="hidden" placeholder="작성자" name="u_id" value="">
                  </div>

                   <div class="row line">
                        <div class="col-2">제목</div>
                        <div class="col-3">
                            <input name="c_title" type="text" style="width: 500px;">
                        </div>
                    </div>
                    <div class="row line">
                        <div class="col-2 item align-self-center">본문</div>
                        <div class="col-10 ">
                         <textarea  id="editorTxt" cols="50" rows="15"></textarea>
                         <input type="hidden" id="e-content" name="c_content">
                        </div>
                    </div>
                  
                          
                    <button>저장하기</button>
            </div>
                       

		</form>
</div>    


         
          
            


</body>
<jsp:include page="00_footer.jsp"></jsp:include>
</html>