<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/mealkit_addition_edition_deletion.css">
</head>

<body>
 <section class="page_core">
       <jsp:include page="04_adminMealKitView.jsp"></jsp:include>
        <div class="page_core_container">
        <div class="area_left">
        <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
            </div>
            
            <div class="page_element_middle">
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" placeholder="밀키트 리스트에서 선택을 하세요" readonly></input>
                </div>
          </div>      
        </div>
          
        </div>
    </section>

 

 
</body>

</html>