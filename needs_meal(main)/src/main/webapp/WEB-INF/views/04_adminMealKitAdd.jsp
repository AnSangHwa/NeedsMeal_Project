<%@page import="com.human.project.domain.ItemVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.human.project.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/mealkit_addition_edition_deletion.css">
 <link rel="stylesheet" href="./css/custom.css"> 
</head>

<body>
<form action="99_MealInsert.do">
 <section class="page_core">
        <div class="page_core_container">
        <div class="area_left">
            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
            </div>
            <div class="page_element_middle">
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" placeholder="밀키트명" name="m_name"></input>
                    
                </div>
               <div>
                	<select class="btn_product_name btn_mealkit_name dark_grey_btn select-ctg">
                		<option value="1000">카테고리코드</option>
                		<option value="1001">한식</option>
                		<option value="1002">양식</option>
                		<option value="1003">아시아</option>
                		<option value="1004">분식/야식</option>
                	</select>    
                </div>
                <div>
                    <input id="insert-ctg" type="hidden" placeholder="카테고리코드"
                        name="ctg_id" value="1000"></input>
                </div>
                <div>
                    <input class="btn_material_code_neccessary dark_grey_btn" id="req-item" type="text" placeholder="재료코드(필수)"
                        name="i_id_req"></input>
                </div>
                <div>
                    <input class="btn_material_code_basic dark_grey_btn" id="base-item" type="text" placeholder="재료코드(기본)"
                        name="i_id_base"></input>
                </div>
                <div>
                    <input class="btn_stock dark_grey_btn" type="text" placeholder="재고수량"
                        name="m_stock"></input>
                </div>
                <div>
                    <input class="btn_price dark_grey_btn" type="text" id="meal-price" placeholder="가격"
                        name="m_price"></input>
                </div>
                <div>
                    <textarea style="width: 270px; height: 100px;" name="m_content" placeholder="제품 설명"></textarea>
                </div>
                <div>
                   <input class="btn_to_addtion" id="admin-sub" type="submit" value="추가"></input>
                    <input class="btn_to_deletion" type="reset" value="취소"></input>
                </div>
            </div>
            <div class="page_element_buttom">
                <a href="04_adminMain.do"><input class="btn_to_escape" type="button" value="나가기" name="미정된_사항"></input></a>
            </div>    
        </div>
        </div>
        <jsp:include page="04_adminItemView3.jsp"></jsp:include>
    </section>
</form>
 

 
</body>
<script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <script src="js/meal.js"></script>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</html>