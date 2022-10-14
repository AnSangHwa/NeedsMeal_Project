<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>

    
    <!-- Start My Account  -->
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



                <div class="info-date_check_box">
                    
                        <h3> 조회기간 </h3>
                        <div class="info-date-check">
                            <input type="button" id="btn-today" value="오늘">
                            <input type="button" id="btn-week" value="7일">
                            <input type="button" id="btn-halfmonth" value="15일">
                            <input type="button" id="btn-month" value="1개월">
                            <input type="button" id="btn-3month" value="3개월">
                            <input type="button" id="btn-year" value="1년">
                        </div>
                     <form method="get" name="DateSearch">
                        <div class="info-date-check-calendar">
                            <input type="text" id="datepicker1" name="startDate" style="width:27%" > ~ <input type="text" id="datepicker2" name="endDate" style="width:27%">
                            <input type="button" class="btn_date_check" id="mypageSubmitbtn" value="조회"> 
                        </div>  
                        
                    </form>
                </div>

                <div class="info-QnA-Write">                    
                    <input type="button" value="1 : 1 문의하기 ">
                </div>


                <div class="QnA-tb">
                    <table class="QnA-table">
                        <thead class="QnA-table-header">
                            <tr>
                                <td>
                                    문의날짜
                                </td> 
                                <td >                               
                                    카테고리
                                </td>
                                <td >
                                    제목
                                </td>                             
                            </tr>
                        </thead>
                       
                        <tbody>
                        <c:forEach items="${qnaList}" var="qna">
						<tr>
							<td>${qna.q_date }</td>
							<td>${qna.q_id }</td>
							<td>${qna.q_title }</td>						
						</tr>	
						</c:forEach>	

                        </tbody>

                    </table>
                    

                </div>
                
                
                
              


            </div>
       
        </div>  
    </div>
   </div>
    <!-- End My Account -->

    
    

 
<jsp:include page="00_footer.jsp"></jsp:include>
</body>
</html>