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
<form action="99_adminUpdate.do">
 <section class="page_core">
        <jsp:include page="04_adminItemView.jsp"></jsp:include>
        <div class="page_core_container">
        <div class="area_left">
        <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
            </div>
            
            <div class="page_element_middle">
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" value="${item.i_id }" name="i_id" readonly></input>
                </div>
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" value="${item.i_name }" name="i_name" readonly></input>
                </div>
                <div>
                    <input class="btn_category_code dark_grey_btn" type="text" value="${item.ctg_id }"
                        name="ctg_id" readonly></input>
                </div>
                <div>
                    <input class="btn_category_code dark_grey_btn" type="text" value="${item.i_weight }"
                        name="i_weight"></input>
                </div>
                <div>
                    <input class="btn_stock dark_grey_btn" type="text" value="${item.i_stock_cnt}"
                        name="i_stock_cnt"></input>
                </div>
                <div>
                    <input class="btn_price dark_grey_btn" type="text" value="${item.i_price}"
                        name="i_price"></input>
                </div>
                <div>
                    <input class="btn_to_addtion" type="submit" value="수정"></input>
                    <input class="btn_to_deletion" id="admin-reset" type="reset" value="되돌리기"></input>
                    <a href="99_adminItemDelete.do?i_name=${item.i_name}"><input class="btn_to_deletion" type="button" value="삭제"></input></a>
                </div>
            </div>
            <div class="page_element_buttom">
                <a href="04_adminMain.do"><input class="btn_to_escape" type="button" value="나가기" name="미정된_사항"></input></a>
            </div>
        </div>
          
        </div>
        

    </section>
</form>
 

 
</body>

</html>