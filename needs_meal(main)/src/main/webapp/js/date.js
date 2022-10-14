$(document).ready(function() {
	 $("#datepicker1, #datepicker2").datepicker({
         dateFormat: 'yy.mm.dd',
         
         prevText: '이전 달',
         nextText: '다음 달',
         monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
         monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
         dayNames: ['일', '월', '화', '수', '목', '금', '토'],
         dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],         
         showMonthAfterYear: true,         
         buttonImageOnly: true,         
         yearSuffix: '년',
         changeYear: true, //콤보박스에서 년 선택 가능
         changeMonth: true //콤보박스에서 월 선택 가능     
     }); 
	 
	 	let d = new Date();
	    let year = d.getFullYear();
	    let month = d.getMonth() + 1; // 월은 0에서 시작하기 때문에 +1
	    let day = d.getDate();  
	    $('#datepicker1').val(`${year}-${month}-${day}`);
	    $('#datepicker2').val(`${year}-${month}-${day}`);
	    let endDate = d;
	    
	    // 오늘버튼
	    $('#btn-today').click(function(){
	    $('#datepicker1, #datepicker2').datepicker('setDate', 'today'); 
	    })
	    
	    // 7일버튼
	    $('#btn-week').click(function(){
	        $('#datepicker2').val(`${year}-${month}-${day}`);
	        endDate.setDate(endDate.getDate() - 7);
	        $('#datepicker1').val(`${endDate.getFullYear()}-${endDate.getMonth()+1}-${endDate.getDate()}`);
	        endDate.setDate(endDate.getDate() + 7); // 버튼 클릭 시 계속 더해지기 때문에 초기화
	    });
	    
	    // 15일버튼
	    $('#btn-halfmonth').click(function(){
	        $('#datepicker2').val(`${year}-${month}-${day}`);
	        endDate.setDate(endDate.getDate() - 15);
	        $('#datepicker1').val(`${endDate.getFullYear()}-${endDate.getMonth()+1}-${endDate.getDate()}`);
	        endDate.setDate(endDate.getDate() + 15); // 버튼 클릭 시 계속 더해지기 때문에 초기화
	    });
	    
	    // 1개월 버튼
	    $('#btn-month').click(function(){
	        $('#datepicker2').val(`${year}-${month}-${day}`);
	        endDate.setMonth(endDate.getMonth() - 1);
	        $('#datepicker1').val(`${endDate.getFullYear()}-${endDate.getMonth()+1}-${endDate.getDate()}`);
	        endDate.setMonth(endDate.getMonth() + 1); // 버튼 클릭 시 계속 더해지기 때문에 초기화
	    });
	    
	    // 3개월 버튼
	    $('#btn-3month').click(function(){
	        $('#datepicker2').val(`${year}-${month}-${day}`);
	        endDate.setMonth(endDate.getMonth() - 3);
	        $('#datepicker1').val(`${endDate.getFullYear()}-${endDate.getMonth()+1}-${endDate.getDate()}`);
	        endDate.setMonth(endDate.getMonth() + 3); // 버튼 클릭 시 계속 더해지기 때문에 초기화
	    });
	    
	    // 1년 버튼
	    $('#btn-year').click(function(){
	        $('#datepicker2').val(`${year}-${month}-${day}`);
	        endDate.setYear(endDate.getFullYear() - 1);
	        $('#datepicker1').val(`${endDate.getFullYear()}-${endDate.getMonth()+1}-${endDate.getDate()}`);
	        endDate.setYear(endDate.getFullYear() + 1); // 버튼 클릭 시 계속 더해지기 때문에 초기화
	    });      
	 })
		
		 

	
	 
	 
	 
	
   