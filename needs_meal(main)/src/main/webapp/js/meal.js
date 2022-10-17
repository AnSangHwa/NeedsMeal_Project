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
		$('#cart-price').val($('#all-price').text())
        
	})
	
	//		----------------------- 장바구니 메뉴 삭제버튼
		

     $('.cart input').click(function() {
         $(this).parent().next().find('p').text($(this).parent().prev().text()*$(this).val());
          
//         장바구니의 총액이 증감하는 부분
        let sum = 0;
  		for( let i = 1; i<10; i++){
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
//			$('.item-list').hide();
			$('.item-list .item-ctg-'+$(this).parent().prev().text()).parent().show();			
	})
    
//	------------------------------------------------------------------
	
//	메인 페이지

	//	------------------------------------------------------------------
	
	//	커뮤니티 페이지
	
})