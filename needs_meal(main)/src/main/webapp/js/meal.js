$(function() {
	
//	밀키트에서 사용할 js 파일입니다.
	
//	장바구니 클릭시--------
//	$('#go-cart').click(function() {
//		alert($('#meal_name').text())
//	})
	
	// 총액을 표시해주는 함수
	$('.quantity-box input').click(function() {
		let sum = 0;
		for( let i = 1; i<10; i++){
			sum+=Number($('#req'+i+' .total-pr> p').text())
			sum+=Number($('#base'+i+' .total-pr> p').text())
		}

		$('#all-price').text(sum)			
        
	})
	
	//		----------------------- 장바구니 메뉴 삭제버튼
		
	 $('.remove-pr').click(function() {
                $(this).parent('tr').remove();
     })

     $('.cart input').click(function() {
         if($(this).val() < 1){
             $(this).not('.base input').parent().parent('tr').remove();
         }
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
     
     
})