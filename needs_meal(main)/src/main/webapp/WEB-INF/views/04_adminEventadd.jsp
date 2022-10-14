<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/custom.css">

</head>
<body id="admin">
 <section class="page_core">

            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a><br>
                <div class="head_word color-white"><h1>1:1 문의</h1></div>
            </div>
        	<form action="99_eventAdd.do" method="post">

                   <div class="row line">
                       <div class="col-2">이벤트 추가</div>
                       <div class="col-3">
                            <input class="textbox" type="text" placeholder="이벤트 추가" readonly>  
                       </div>    
	                   <div class="row line">
	                       <div class="col-2">관리자</div>
	                       <div class="col-3">
	                            <input class="textbox" type="text" placeholder="관리자" readonly>
	                        </div>
	                   </div>
	                   <div class="row line">
	                        <div class="col-2">이벤트명</div>
	                        <div class="col-3">
	                            <input class="textbox" name="e_name" type="text" placeholder="이벤트명">
	                        </div>
	                    </div>
	                    <div class="row line">
	                        <div class="col-2 item align-self-center">이벤트 내용</div>
	                         <input type="text" id="e-content" name="e_content" placeholder="내용작성">
	                    </div>
                	</div>    

            <div class="row">
                <div class="col-6 btn-save filter-button-group" >
                    <button type="submit">저장하기</button>
                </div> 
            </div>   						
		</form>
    </section>

</body>
</html>