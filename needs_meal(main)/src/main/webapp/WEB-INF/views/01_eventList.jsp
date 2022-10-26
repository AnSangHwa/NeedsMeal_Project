<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="00_header.jsp"></jsp:include>

<body>

    <!-- Start Gallery  -->
    <div class="products-box">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="special-menu text-left">
                        <div class="button-group filter-button-group">
                            <button data-filter=".ongoing">진행중 이벤트</button>
                            <button data-filter=".end">종료된 이벤트</button>
                        </div>
                    </div>
                </div>
            </div>

        <div class="row special-list">
        <c:forEach items="${EventList}" var="event">
            <div class="col-lg-3 col-md-6 special-grid ongoing">
                <div class="products-single fix">
							<div class="box-img-hover">


								<a href="01_eventView.do?e_name=${event.e_name}"><img
									class="img-fluid" alt="Image"
									src="images/eventList/${event.e_name}.png" alt=""></a>
									<div style="color: black;"><strong> ${event.e_name}</strong> </div>
								<div>
									<div><small>이벤트 기간 : ${event.e_start} ~ <span class="endDate">${event.e_end}</span></small></div>
								</div>
							</div>
						</div>
            </div>
        
        </c:forEach>



              
            </div>
        </div>
    </div>
    <!-- End Gallery  -->

<jsp:include page="00_footer.jsp"></jsp:include>
</body>
<script>
	let nowDate = "${nowDate}";
		nowDate = Number(nowDate.replaceAll("-",""));
	let endDate = $('.endDate');
	for(let i = 0; i < endDate.length; i++ ){
		
  		let end = Number(endDate.eq(i).text().replaceAll(".",""));
  		if(nowDate > end){
  			
  			$('.special-grid').eq(i).attr("class","col-lg-3 col-md-6 special-grid end");
  		}
	}
  			
  			
 	

</script>
</html>