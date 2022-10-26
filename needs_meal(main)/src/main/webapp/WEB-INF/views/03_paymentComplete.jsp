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
 <div class="end-pay">
        <div>
            <img src="./images/결제완료.png">
            <p>주문이 완료되었습니다. </p>
            <table>
                <tr>
                    <td>주문번호</td>
                    <td>${orderInfo.o_id}</td>
                </tr>
                <tr>
                    <td>주문 접수일</td>
                    <td>${orderInfo.o_date}</td>
                </tr>
                               
                <tr>
                    <td>결제수단</td>
                    <td>카카오페이머니</td>
                </tr>
            </table>
            <br>
            <a href="02_orderList.do"><button class="btn btn-outline-primary"> 주문내역보기 </button></a>
            <a href="01_main.do"><button class="btn btn-outline-info"> 홈으로 돌아가기 </button></a>
        </div>
    </div>

 
<jsp:include page="00_footer.jsp"></jsp:include>
</body>
</html>