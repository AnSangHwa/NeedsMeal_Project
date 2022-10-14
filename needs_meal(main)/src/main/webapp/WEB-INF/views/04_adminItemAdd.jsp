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
                    <input class="btn_category_code dark_grey_btn" type="text" placeholder="카테고리코드"
                        name="ctg_id"></input>
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
                    <input class="btn_to_addtion" id="admin-sub" type="submit" value="추가"></input>
                    <input class="btn_to_deletion" type="reset" value="취소"></input>
                </div>
            </div>
            <div class="page_element_buttom">
               <a href="04_adminMain.do"><input class="btn_to_escape" type="button" value="나가기" name="미정된_사항"></input></a>
            </div>
            
        </div>
          
        </div>
        
<!--         <div class="area_right"> -->
<!--             <div class="text_style_head">재료 리스트</div> -->
<!--             <br> -->
<!--             <table> -->
<!--                 <thead> -->
<!--                 <tr> -->
<!--                     <th class="table_head th_">재료코드</th> -->
<!--                     <th class="table_head th_">재료명</th> -->
<!--                     <th class="table_head th_">카테고리</th> -->
<!--                     <th class="table_head th_">무게</th> -->
<!--                     <th class="table_head th_">재고수량</th> -->
<!--                     <th class="table_head th_">가격<br>(원)</th> -->
<!--                     <th class="table_head th_">선택</th> -->
<!--                 </tr> -->
<!--                 </thead> -->
<!--                 <tbody> -->
<!--                 <tr> -->
<!--                     <td>맛있는 불고기</td> -->
<!--                     <td>1</td> -->
<!--                     <td>s001s003...</td> -->
<!--                     <td>s005s007...</td> -->
<!--                     <td>30</td> -->
<!--                     <td>8000</td> -->
<!--                     <td class="btn_selection_container"><input class="btn_selection" type="radio" value="미정"></td> -->
<!--                 </tr>  -->
<!--                 <tr> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                     <td></td> -->
<!--                 </tr>  -->
<!--                 </tbody> -->
<!--             </table>  -->
<!--         </div> -->
    </section>
</form>
 

 
</body>

</html>