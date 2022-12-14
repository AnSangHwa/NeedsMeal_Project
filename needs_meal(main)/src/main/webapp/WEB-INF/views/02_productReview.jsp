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
                <div class = "my-info-review">
                    <h1>상품후기 </h1>
                </div>              

                <div class="info-QnA-Write" style="position: relative; right: 50px;">                    
                    <input type="button" value="글쓰기 " onclick="location.href='02_reviewAdd.do'">
                </div>


                <div class="Review-tb">
                    <table class="Review-table">
                    
                        <thead class="Review-table-header">
                            <tr>
                                <td>
                	게시글번호                  
                                </td> 
                                <td>                               
                                    제목
                                </td>
                                <td >
                                    날짜
                                </td>   
                                <td>
                                    작성자
                                </td>     
                                <td>
                                    조회수
                                </td>                     
                            </tr>
                        </thead>
                       
                        <tbody>
						<c:forEach items="${reviewList}" var="list">
						<tr>
							<td>${list.ctg_id}</td>
							<td><a href="02_reviewView.do?ctg_id=${list.ctg_id}&c_id=${list.c_id}" >${list.c_title }</a></td>
							<td>${list.c_date }</td>
							<td>${list.u_id }</td>
							<td>${list.c_cnt }</td>							
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