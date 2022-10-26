$(function() {
	
//	밀키트에서 사용할 js 파일입니다.
	
//	장바구니 클릭시--------
//	$('#go-cart').click(function() {
//		alert($('#meal_name').text())
//	})
	
//	가격을 증감하는 부분
	$('.quantity-box input').click(function() {
		$(this).parent().next().find('p').text($(this).parent().prev().text()*$(this).val());
	})
	
	// 총액을 표시해주는 함수
	$('.quantity-box input').click(function() {
		let sum = 0;
		for( let i = 0; i<11; i++){
			sum+=Number($('#req'+i+' .total-pr> p').text())
			sum+=Number($('#base'+i+' .total-pr> p').text())
		}

		$('#all-price').text(sum)	
		$('#cart-price').val(sum)	
//		$('#cart-price').val($('#all-price').text())
        
	})
	
	//		----------------------- 장바구니 메뉴 삭제버튼
	 
     $('.cart input').click(function() {
         $(this).parent().next().find('p').text($(this).parent().prev().text()*$(this).val());
          
//         장바구니의 총액이 증감하는 부분
        let sum = 0;
  		for( let i = 0; i<20; i++){
  			sum+=Number($('#cart'+i+' .total-pr> p').text())
  		}

  		$('#order-price div').text(sum);	
  		$('#last-price div').text($('#order-price div').text()-$('#sale-price div span').text())
          
     })
     
//     글쓰기 부분
	$('.ctg-select select').click(function() {
		let select = $('.ctg-select select').val();
		$('#ctg-save').val(select);
		
		if(select == 4000){
			$('.review-name').show();
			$('.free-ctg').hide();
			$('#review-m').attr("name","m_name");
			$('#free-m').attr("name","없어짐");
			$('#inquiry-m').val("");
		}else{
			$('.review-name').hide();
			$('.free-ctg').show();
			$('#free-m').attr("name","m_name");
			$('#review-m').attr("name","없어짐");
			$('#review-m').val("");
		}
	})
//	잡담이외에는 상품이름 적게끔
    $('.ctg-radio select').click(function() {
		let select = $('.ctg-radio select').val();
		$('#ctg-save').val(select);
		
		if(select == 3001){
				$('.review-name').hide();
				$('.free-ctg').show();
				$('#free-m').attr("name","m_name");
				$('#review-m').attr("name","없어짐");
				$('#review-m').val("");
		}else{
				$('.review-name').show();
				$('#review-m').attr("name","m_name");
				$('#free-m').attr("name","없어짐");
				$('#inquiry-m').val("");
		}
	})
	
	$('.ctg-radio select').click(function() {
		let select = $('.ctg-radio select').val();
		$('#ctg-save').val(select);
	})
     
     
//	관리자 카테고리코드
	$('.select-ctg').click(function() {
//		alert($('.select-ctg').val())
		$('#insert-ctg').val($('.select-ctg').val())
		
	})
	
//	카테고리 미 입력시 넘어가지 않음
	$('#admin-sub').click(function() {
		let ctg = $('#insert-ctg').val()
		if( ctg == 2000 || ctg == 1000){
			alert('카테고리코드를 설정해주세요.')
			$('#admin-sub').attr('type','button');
		}else{
			$('#admin-sub').attr('type','submit');
		}
	})
	
	//	필수재료 버튼누르면 텍스트 입력
	$('.req-pick').click(function(){
//		alert($(this).parent().find('.item-price').text());
		if( $('#req-item').val() == ''){
			$('#req-item').val($(this).parent().find('.item-name').text())
			$('#meal-price').val(Number($('#meal-price').val())+Number($(this).parent().find('.item-price').text()));
		}else{
			$('#req-item').val($('#req-item').val()+'/'+$(this).parent().find('.item-name').text())
			$('#meal-price').val(Number($('#meal-price').val())+Number($(this).parent().find('.item-price').text()));
		}
	})
	
//	기본재료 버튼누르면 텍스트 입력
	$('.base-pick').click(function(){
		if( $('#base-item').val() == ''){
			$('#base-item').val($(this).parent().find('.item-name').text())
			$('#meal-price').val(Number($('#meal-price').val())+Number($(this).parent().find('.item-price').text()));
		}else{
			$('#base-item').val($('#base-item').val()+'/'+$(this).parent().find('.item-name').text())
			$('#meal-price').val(Number($('#meal-price').val())+Number($(this).parent().find('.item-price').text()));
		}
	})
	
//	카테고리 버튼 선택
	$('.pick-ctg').click(function(){
//		alert($(this).parent().prev().text())
//		alert($('.item-list .item-ctg-2007').text())
//		alert($(this).parent().prev().text() == $('.item-list .item-ctg-2007').text())
			$('.item-list').hide();
			$('.item-list .item-ctg-'+$(this).parent().prev().text()).parent().show();			
	})
    
//	------------------------------------------------------------------
	
//	메인 페이지
	$('.go-payitem').click(function() {
		if( $('.login-box a button').text() == '로그인' ){
			
			$('.go-payitem').prop('type','button');
			alert('로그인이 필요합니다.');
			location.href="05_login.do";
		}
			
	})
	$('.go-cartadditem').click(function() {
		if( $('.login-box a button').text() == '로그인' ){
			
			$('.go-cartadditem').prop('type','button');
			alert('로그인이 필요합니다.');
			location.href="05_login.do";
		}
		
	})
	$('.go-paymeal').click(function() {
		if( $('.login-box a button').text() == '로그인' ){
			
			$('.go-paymeal').prop('type','button');
			alert('로그인이 필요합니다.');
			location.href="05_login.do";
		}
		
	})
	$('.go-cartaddmeal').click(function() {
		if( $('.login-box a button').text() == '로그인' ){
			
			$('.go-cartaddmeal').prop('type','button');
			alert('로그인이 필요합니다.');
			location.href="05_login.do";
		}
		
	})
//	구매하기버튼, 장바구니버튼 활성화. 재료
	$('.go-payitem').click(function() {
		$('form').attr("action","98_paymentForm.do");
		
	})
	$('.go-cartadditem').click(function() {
		$('form').attr("action","98_go_cart.do");
		
	})
	
	
//	구매하기버튼, 장바구니버튼 활성화. 밀키트
	
	
	$('.go-paymeal').click(function() {
				
		$('form').attr("action","99_paymentForm.do");
		
	})
	
	$('.go-cartaddmeal').click(function() {
					
		$('form').attr("action","99_go_cart.do");
		
	})
	//	------------------------------------------------------------------
	
	//	커뮤니티 페이지
//	커뮤니티 뷰
	$('.login-commu').click(function() {
		if( $('.login-box > a').children('button').text() == '로그인'){
			alert('로그인이 필요합니다.');
			window.location.href = "05_login.do";
		}
	})
	
	$('#commu-update').click(function() {
		$('form').attr("action","99_updateCommu.do");
	})
	$('#commu-delete').click(function() {
		$('form').attr("action","99_deleteCommu.do");
	})
	
//	수정, 삭제, 취소버튼
	$('.reply-showbutton').click(function() {
		$('.reply-showbutton').parent().parent().find('.reply-delete').hide();
		$('.reply-showbutton').parent().parent().find('.reply-back').hide();
		$('.reply-showbutton').parent().parent().find('.reply-update').hide();
		$('.reply-showbutton').show();
		
		
		$(this).parent().parent().find('.reply-back').show();
		$(this).parent().parent().find('.reply-delete').show();
		$(this).parent().parent().find('.reply-update').show();
		$(this).hide();
		$('.reply-showbutton').parent().parent().find('.replay-content').show();
		$(this).parent().parent().find('.replay-content').hide();
		$('.reply-update').parent().find('.replay-r_content-change').attr("type","hidden");
		$(this).parent().find('.replay-r_content-change').attr("type","text");

	})
	
	$('.myPageReply-showbutton').click(function() {
		$('.myPageReply-showbutton').parent().parent().find('.reply-delete').hide();
		$('.myPageReply-showbutton').parent().parent().find('.reply-back').hide();
		$('.myPageReply-showbutton').parent().parent().find('.reply-update').hide();
		$('.myPageReply-showbutton').show();
		
		
		$(this).parent().parent().find('.myPageReply-back').show();
		$(this).parent().parent().find('.myPageReply-delete').show();
		$(this).parent().parent().find('.myPageReply-update').show();
		$(this).hide();
		$('.myPageReply-showbutton').parent().parent().find('.reply-content').show();
		$(this).parent().parent().find('.reply-content').hide();
		$('.myPageReply-update').parent().find('.replay-r_content-change').attr("type","hidden");
		$(this).parent().find('.replay-r_content-change').attr("type","text");
		
	})
	
//	수정버튼
	$('.reply-update').click(function() {
		$(this).attr("type","submit");
		$(this).parent('form').attr("action","99_replay-change.do")
		
	})
	$('.myPageReply-update').click(function() {
		$(this).attr("type","submit");
		$(this).parent('form').attr("action","99_myPageReply-change.do")
		
	})
//	삭제버튼
	$('.reply-delete').click(function() {
		$(this).attr("type","submit");
		$(this).parent('form').attr("action","99_replay-delete.do")
		
	})
	$('.myPageReply-delete').click(function() {
		$(this).attr("type","submit");
		$(this).parent('form').attr("action","99_myPageReply-delete.do")
		
	})
//	취소버튼
	$('.reply-back').click(function() {
		$(this).parent().find('.replay-r_content-change').val($(this).parent().parent().find('.replay-content').text());
		$(this).parent().parent().find('.replay-content').show();
		$(this).parent().find('.replay-r_content-change').attr("type","hidden");
		$(this).parent().parent().find('.reply-showbutton').show();
		$(this).parent().parent().find('.reply-delete').hide();
		$(this).parent().parent().find('.reply-update').hide();
		$(this).hide();
	})
	$('.myPageReply-back').click(function() {
		$(this).parent().find('.replay-r_content-change').val($(this).parent().parent().find('.replay-content').text());
		$(this).parent().parent().find('.replay-content').show();
		$(this).parent().find('.replay-r_content-change').attr("type","hidden");
		$(this).parent().parent().find('.myPageReply-showbutton').show();
		$(this).parent().parent().find('.myPageReply-delete').hide();
		$(this).parent().parent().find('.myPageReply-update').hide();
		$(this).hide();
	})
	
//	댓글의 답글기능 
	let count = $('.comment_count').text();
	
	for( let i = 1; i <= count; i++){		
	$('.reply-show'+i).click(function() {
		for( let j = 1; j <= count; j++){
			$('.reply-reply'+j).hide();			
		}
		$('.reply-reply'+i).show();
	})
	}
	
//  글쓰기 로그인
	   $('#go-write').click(function(){
	      if( $('.login-box > a').children('button').text() == '로그인'){
	         $('#go-write').parent().attr("href","#");
	         alert('로그인이 필요합니다.');
	         window.location.href = "05_login.do";
	      }
	   })
	
	
	
	
	
})