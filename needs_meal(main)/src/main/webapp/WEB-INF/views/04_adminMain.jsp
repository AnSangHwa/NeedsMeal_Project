<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/administrator_page.css">
</head>
  
<body>
 <section class="page_core">
        <div class="page_core_container">
            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
                <a href="01_main.do"><input type="button" value="로그아웃"></input></a>
            </div>
            <div class="page_element_buttom">
                 <a href="04_adminMealKitAdd.do"><input class="btn_mealkit_management" type="button" value="밀키트 추가"></input></a>
                <a href="04_adminItemAdd.do"><input class="btn_material_management" type="button" value="재료 추가"></input></a>
                 <a href="04_adminEventManage.do"><input class="btn_customer_question_viewing" type="button" value="이벤트 관리"></input></a>
            </div>
            <div class="page_element_buttom">
                 <a href="04_adminMealKitManage.do"><input class="btn_mealkit_management" type="button" value="밀키트 관리"></input></a>
                <a href="04_adminItemManage.do"><input class="btn_material_management" type="button" value="재료 수정"></input></a>
                <a href="04_adminQnAList.do"><input class="btn_customer_question_viewing" type="button" value="고객문의보기"></input></a>
            </div>
            <div class="page_element_buttom">
				<a href="04_admindeliveryManage.do"><input class="btn_mealkit_management" type="button" value="배송관리"></input></a>
            </div>
        </div>
    </section>
 

 
</body>

</html>