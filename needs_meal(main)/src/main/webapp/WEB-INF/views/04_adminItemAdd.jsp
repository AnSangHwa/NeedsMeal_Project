<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./css/mealkit_addition_edition_deletion.css">
 <link rel="stylesheet" href="./css/custom.css"> 
</head>
 
<body>
<form action="99_itemInsert.do">
 <section class="page_core">
        <div class="page_core_container">
        <div class="area_left">
            <div class="page_element_top">
                <a href="04_adminMain.do" style="text-decoration: none" class="head_word color-white">나는 관리자다!</a>
            </div>
            <div class="page_element_middle">
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" placeholder="상품코드" name="i_id"></input>
                </div>
                <div>
                    <input class="btn_product_name btn_mealkit_name dark_grey_btn" type="text" placeholder="상품명" name="i_name"></input>
                </div>
                <div>
                	<select class="btn_product_name btn_mealkit_name dark_grey_btn select-ctg">
                		<option value="2000">카테고리코드</option>
                		<option value="2001">채소</option>
                		<option value="2002">수산</option>
                		<option value="2003">육류</option>
                		<option value="2004">소스</option>
                		<option value="2005">밑반찬</option>
                		<option value="2006">간식</option>
                		<option value="2007">면</option>
                		<option value="2008">그외</option>
                	</select>    
                </div>
                <div>
                    <input id="insert-ctg" type="hidden" placeholder="카테고리코드"
                        name="ctg_id" value="2000"></input>
                </div>
                <div>
                    <input class="btn_category_code dark_grey_btn" type="text" placeholder="무게"
                        name="i_weight"></input>
                </div>
                <div>
                    <input class="btn_stock dark_grey_btn" type="text" placeholder="재고수량"
                        name="i_stock_cnt"></input>
                </div>
                <div>
                    <input class="btn_price dark_grey_btn" type="text" placeholder="가격"
                        name="i_price"></input>
                </div>
                <div>
                    <input class="btn_to_addtion" id="admin-sub" type="submit" style="text-align: center;" value="추가"></input>
                    <input class="btn_to_deletion" type="reset" value="취소"></input>
                </div>
            </div>
            <div class="page_element_buttom">
               <a href="04_adminMain.do"><input class="btn_to_escape" type="button" value="나가기" name="미정된_사항"></input></a>
            </div>
            
        </div>
          
        </div>
        
		<jsp:include page="04_adminItemView2.jsp"></jsp:include>
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