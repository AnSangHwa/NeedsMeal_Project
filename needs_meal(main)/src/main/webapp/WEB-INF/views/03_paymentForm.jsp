<%@page import="com.human.project.domain.MealVO"%>
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
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<body>
   
    
    <!-- 결제하기 form -->
    <div id="payment">
        <div class="container">
            <form action="03_paymentComplete.do" id="pay-form" name="orderlist" method="get">
                <h2>주문 목록</h2>
             
                <table class="userInfo jumun_tb">
                    <tr>
                    	<th> 상품삭제</th>
                        <th class="jumun_t1"> 상품/옵션정보</th>
                        <th class="jumun_t2"> 수량</th>
                        <th class="jumun_t3"> 상품금액</th>
                        <th class="jumun_t3"> 할인/적립</th>
                        <th class="jumun_t5"> 합계금액</th>
                    </tr>
                    <c:forEach items="${CartMealList}" var="meal" >
                          <tr id="cart1" class="meal">
                            <td><a href="97_cart_delete.do?m_name=${meal.m_name }&m_price=${meal.m_price}&cart_cnt=${meal.cart_cnt }"><i class="fas fa-times"></i></a></td>
                              <td class="jumun_t1" >
                                  <a href="99_productView.do?m_name=${meal.m_name}"><img class="img-fluid" style="width: 50px; height: 50px;" src="images/imgMeal/${meal.m_name }.png" alt=""/></a>
                             	  <a href="99_productView.do?m_name=${meal.m_name}">${meal.m_name}</a>
                              </td>
                              <td class="jumun_t2">${meal.m_sell_cnt }</td>
                              <td class="jumun_t3"><p>${meal.m_price * meal.m_sell_cnt}</p></td>
                              <td class="jumun_t4">0</td>
                              <td class="jumun_t5">${meal.m_price * meal.m_sell_cnt}</td>
                          </tr>		
					</c:forEach>
					<c:forEach items="${CartItemList}" var="item">
                          <tr id="cart1" class="item">
                          	 <td><a href="96_cart_delete.do?i_name=${item.i_name }&i_price=${item.i_price}&cart_cnt=${item.cart_cnt }&i_id=${item.i_id}"><i class="fas fa-times"></i></a></td>
                              <td class="jumun_t1">
                                  <a href="#"><img class="img-fluid" style="width: 50px; height: 50px;" src="images/imgMeal/${item.i_name }.png" alt="" /></a>
                              	  <a href="#">${item.i_name}</a>
                              </td>
                              <td class="jumun_t2" >${item.i_sell_cnt }</td>
                              <td class="jumun_t3"><p>${item.i_price * item.i_sell_cnt}</p></td>
                              <td class="jumun_t4">0</td>
                              <td class="jumun_t5">${item.i_price * item.i_sell_cnt}</td>
                          </tr>		
					</c:forEach>
<!--                     <tr> -->
<!--                         <td class="jumun_t1"></td> -->
<!--                         <td class="jumun_t2"></td> -->
<!--                         <td class="jumun_t3"></td> -->
<!--                         <td class="jumun_t3"></td> -->
<!--                         <td class="jumun_t5"></td> -->
<!--                     </tr> -->
                     <tr>
                    <td colspan="7"><a href="03_cart.do"> ◁ 장바구니 가기</a>
                    	<input type="hidden" name="o_pickList" >
                    </td>
                    </tr>
                    <tr>
                        <td colspan="7" class="jumun_table_td">
                            <div class="jumun_table_div"  id="test"><span>총 금액
                                <br><span id="sum_price"></span>원</span> 
                            </div>
                            <div class="jumun_table_div"><p>+</p>
                            </div>
                            <div class="jumun_table_div">
                            <span>배송비</span>
                                <br> <span id="deliveryPay">3000</span>원
                            </div>
                             <div class="jumun_table_div"><p>-</p>
                            </div>
                            <div class="jumun_table_div" onclick="point()">
                            <span>포인트</span>
                               <br> <span id="point">0</span>
                            </div>
                            <div class="jumun_table_div"><p>=</p>
                            </div>
                            <div class="jumun_table_div">
                            <span>합계</span>
                            <br> <span id="total_price"> </span>원<br>
                        </div>
                        </td>
                    </tr>
                    
                </table>
                <h2>주문자 정보</h2>
                
                <table class="userInfo">
                    <tr>
                        <td>
                            <div class="row">
                                <div class="col-md-4"> ㆍ 주문하시는분</div>
                                <div class="col-md-4">  <input type="text" name="u_name"  id="userName" class="txt i_tab"  value="${User.u_name}"></div>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr> 
                        <td>
                            <div class="row">
                                <div class="col-md-4"> ㆍ 휴대폰번호</div>
                                <div class="col-md-4 ">  <input id="userTell" type="text" name="u_tell" class="txt i_tab" value="${User.u_tell}"></div> 
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr> 
                        <td>
                            <div class="row">
                                <div class="col-md-4"> ㆍ 이메일</div>
                                <div class="col-4">
									
									<input type="email" class="txt i_tab" id="email" name="u_email" placeholder="" value="${User.u_email}" required>
									<div class="invalid-feedback col-4">Please enter a valid email
										address for shipping updates.</div>
								</div>
                           	</div>
                         
                           
                        </td>
                        <td></td>
                    </tr>
                </table>
          
                <h2 style="display:inline-block;">배송 정보</h2> 
                <table class="userInfo">
                    <tr>
                        <td>
                            <div class="row t_tab">
                                <div class="col-md-4"> 배송지확인</div>
                                <div class="col-md-8"> 
                                	<input type="radio" name="addr" id="basic" value="same" ><label for="basic">주문자정보와 동일 </label>
                                    <input type="radio" id="direct" name="addr" value="salf" checked><label for="direct">직접입력</label></div> 
                               </div>
                     
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <div class="col-md-4"> ㆍ 받으실분</div>
                                <div class="col-md-4">  <input type="text" id="ol_name2" name="ol_name" class="txt i_tab"> </div>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    
                    
<!--                     <tr>  -->
<!--                         <td> -->
<!--                             <div class="row "> -->
<!--                                 <div class="col-md-4"> ㆍ 받으실곳</div> -->
<!--                                 <div class="col-md-4"><input type="text" class="txt i_tab"></div> -->
<!--                                 <div class="col-md-4"><button class="btn hvr-hover txtPlus"  onclick="DaumPostcode()" style="color:white;">우편번호검색</button></div> -->
<!--                                 <div class="col-md-4"></div> -->
<!--                                 <div class="col-md-4"><input type="text" class="txt i_tab" id="address" readonly></div> -->
<!--                                 <div class="col-md-4"><input type="text" class="txtPlus"></div> -->
<!--                             </div> -->
<!--                         </td> -->
<!--                         <td></td> -->
<!--                     </tr> -->
<tr class="jusoBox">

	<td class="userAddr" style="display: none;">
	  <div class="row ">
	  	 <div class="col-4">ㆍ 주소</div>
	  	 <div  class="col-4 ">
		<input type="text" class="txt i_tab t-req " id="UserAddr" placeholder="상세주소" readonly >
	  	 </div>
	  
	  </div>
	</td>
    <td class="selfAddr"  >
    
    	
        <div class="row ">
        
        	
                <div class="col-4">ㆍ 주소</div>
                
                    <div  class="col-4 ">
                        <input type="text"  class="txt i_tab " id="postcode" placeholder="우편번호" readonly >
                    </div>
                
                    <div class="modify-btn col-4 " style= margin:0 >
                        <button type="button"  onclick="DaumPostcode()" >우편번호검색</button>
                    </div>
                </div>	
                
                
                <div class="row ">  
                    <div class="col-4">  </div>

                    <div class="col-8 ">
                            <input type="text"  class="txt i_tab t-req " placeholder="주소"	id="address" readonly >
                    </div>
                </div>

                <div class="row ">
                    <div class="col-4">  </div>
                    <div class="col-8 test1 ">
                            <input type="text" class="txt i_tab t-req " id="detailAddress" placeholder="상세주소" >
                            <input type="hidden" class="txt i_tab" id="olAddr" name="ol_addr">
                            <input type="hidden" class="txt i_tab" id="mName" name="m_name">
                            <input type="hidden" class="txt i_tab" id="uId" name="u_id" value="${User.u_id}">
                            <input type="hidden" class="txt i_tab" id="oCnt" name="o_cnt">
                            <input type="hidden" class="txt i_tab" id="oPrice" name="o_price">
                            <input type="hidden" name="u_point" id="uPoint" value="0">
                            
                    </div>
                 </div>
    </td>
    <td></td>
                        
</tr>
                    
                    
                    
                   	<tr> 
                        <td>
                            <div class="row ">
                                <div class="col-md-4">ㆍ 전화번호</div>
                                <div class="col-md-4"><input id="tellcheck" name="ol_tell"  maxlength="13"  type="text" class="txt i_tab"></div>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                    <tr> 
                        <td>
                            <div class="row t_tab">
                                <div class="col-md-4">요청사항</div>
                                <div class="col-md-8"> <input type="text" name="ol_content" class="txt t-req"></div>
                            </div>
                        </td>
                        <td></td>
                    </tr>
                </table>
                
                <input type="checkbox" id="ck-yes" class="ck" value="ok" required><label for="ck-yes">(필수) 구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.</label><br>
                <button id="check_module" class="btn btn-outline-success p_button" type="button">결제하기</button>
                <input type="reset" class="btn btn-outline-warning" value="취소하기">
            <script>

            let sangpumArr = $("#cart1 > td.jumun_t1 > a:nth-child(2)");
            let sangpumName = "";
            let sangpumCnt = $("#cart1 > td.jumun_t2");
            
            
            let totalCnt = 0;
            if(sangpumArr.length == 1){
            	            	
            	sangpumName = sangpumArr.eq(0).text() ;
            	totalCnt = Number(sangpumCnt.eq(0).text());
            	$('#oCnt').val(totalCnt);
            }else{
            	
	          	for(let i = 0; i < sangpumArr.length; i++){
         			
	          		sangpumName = sangpumArr.eq(0).text()+" 외 "+(sangpumArr.length-1);
	          		totalCnt += Number(sangpumCnt.eq(i).text());
	          	}
	          	$('#oCnt').val(totalCnt);
	         
            }
            
	      
//            	alert(totalCnt);
            $("#mName").val(sangpumArr.eq(0).text());
            
            
           
            
         $("#check_module").click(function () {
        	 let addrSelect = $('input[type=radio][name=addr]:checked').val()
        	 if(addrSelect == "salf"){
        		 $('#olAddr').val($('#postcode').val()+" "+$('#address').val()+" "+$('#detailAddress').val());
        	
        	 }
        	 
        	 if($('#olAddr').val().trim() == "" || $('#ol_name2').val().trim() == ""){
        		 alert("배송 정보를 모두 입력해주세요");
        		 return;
        	
        	 }
        	 
        	 if($('#ol_name2').val().trim() == ""){
        		 alert("받으시는분 성함을 입력해주세요");
        		 return;
        	 }
        	
        	 if($('#ck-yes:checked').val() != "ok"){
        		 alert("결제를 진행하시려면 필수 약관에 동의해주세요");
        		 return;
        	 }
        	 if($('#tellcheck').val().length > 11){
        		 alert("전화번호는 - 없이 11자리까지 입력 가능합니다.");
        		 return;
        		 
        	 }
//         	 $('#pay-form').submit();
        	 
        	 
            var IMP = window.IMP; // 생략가능
            IMP.init('imp24403186'); 
            // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
            // ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
            IMP.request_pay({
               pg: 'kakaopay', 
               pay_method: 'card',
               merchant_uid: 'merchant_' + new Date().getTime(),
               /* 
                *  merchant_uid에 경우 
                *  https://docs.iamport.kr/implementation/payment
                *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
                */
               name: sangpumName,
               // 결제창에서 보여질 이름
               // name: '주문명 : ${auction.a_title}',
               // 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
               amount: $('#total_price').text(),
               // amount: ${bid.b_bid},
               // 가격 
               buyer_name: '100',
               // 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
               // 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
               buyer_postcode: '123-456',
               }, function (rsp) {
                  console.log(rsp);
               if (rsp.success) {
                  var msg = '결제가 완료되었습니다.';
                  msg += '결제 금액 : ' + rsp.paid_amount;
                  document.getElementById('pay-form').submit();
//                   success.submit();
                  // 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
                  // 자세한 설명은 구글링으로 보시는게 좋습니다.
               } else {
                  var msg = '결제에 실패하였습니다.';
                  msg += '에러내용 : ' + rsp.error_msg;
               }
               alert(msg);
            });

         });
      </script>
            </form>
        </div>
    </div>
    <!-- end 결제하기 -->

 
</body>
<jsp:include page="00_footer.jsp"></jsp:include>
<script>

let mealArr = $(".meal > td.jumun_t1 > a:nth-child(2)");
let itemArr = $(".item > td.jumun_t1 > a:nth-child(2)");
let mealCnt = $(".meal > td.jumun_t2");
let itemCnt = $(".item > td.jumun_t2");
let orderList = "";




	
	for(let i = 0; i < mealArr.length; i++){
		
		if(i == 0){
			orderList += mealArr.eq(i).text()+"/"+mealCnt.eq(i).text()
		}else{
			orderList += "/"+mealArr.eq(i).text()+"/"+mealCnt.eq(i).text()
		}
		
			
	}	
	orderList += "&"
	
	for(let i = 0; i < itemArr.length; i++){
		if(i == 0){
			orderList += itemArr.eq(i).text()+"/"+itemCnt.eq(i).text()
		}else{
			orderList += "/"+itemArr.eq(i).text()+"/"+itemCnt.eq(i).text()
		}
				
	}
	
// 	alert(orderList);	
	
	$('input[name=o_pickList]').val(orderList);
	

  let price = $('#cart1 > td.jumun_t5');
  let totalPrice = 0;
  
  for(let i = 0; i < price.length; i++){
	  
	  totalPrice += Number(price.eq(i).text());
  }
  $('#sum_price').text(totalPrice);
  $('#total_price').text(totalPrice+ Number($('#deliveryPay').text()));
  
  if(totalPrice > 30000 ){
	  	$('#deliveryPay').text("0");
	  	alert("3만원 이상 구매하셔서 배송비가 무료 입니다.");
	  	$('#total_price').text(totalPrice);
	  
   }
  $('#oPrice').val(totalPrice);
  
  if(price.length == 0){
	  
	  alert("담긴 상품이 없습니다.");
	  location.href = "01_main.do";
  }
  
  
  $('input[type=radio][name=addr]').click(function(){
	  
	  addrSelect = $('input[type=radio][name=addr]:checked').val();
	  if(addrSelect == "same"){
		  $('#ol_name2').val($('#userName').val());
		 
		  
 		$('.userAddr').attr("style","display: block;") 
 		$('.selfAddr').attr("style","display: none;") 
 		$('#UserAddr').val("${User.u_addr}");
 		$('#tellcheck').val($("#userTell").val());
		$('#olAddr').val($('#UserAddr').val());
		  
	  }else {
		  $('#ol_name2').val("");
		$('.selfAddr').attr("style","display: inline-block;");
		$('.userAddr').attr("style","display: none;");
		$('#UserAddr').val("");
		$('#tellcheck').val("");
		$('#olAddr').val("");
				
	  }
  })
  
  
	 
  
  function point(){
	  
	  
	  let point = '${User.u_point}';
	  let usePoint = Number(prompt("현재 소지하신 포인트는 "+point+" point 입니다\n사용하실 포인트를 입력해주세요 "));
	  let sumPrice = Number ( $('#sum_price').text() );
	  if(usePoint > point){
		  alert("소지하신 포인트보다 더 많은 값을 입력 하실 수 없습니다.");
		  
	  }else{
		  $('#point').text(usePoint);
	  	usePoint = Number($('#point').text());
	  	$('#total_price').text(sumPrice - usePoint);
	  	$('#uPoint').val(Number($('#point').text()));
	
	  }
	  
  }
  
  
  
	  
  
  
 
  

</script>
</html>