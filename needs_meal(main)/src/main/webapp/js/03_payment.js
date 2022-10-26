
	
	
$(function(){
	
	// 핸드폰번호 유효성 검사
	$("#tellcheck").on('keydown', function(e){
	  	// 숫자만 입력받기
	    var trans_num = $(this).val().replace(/-/gi,'');
			var k = e.keyCode;
					
			if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
			{
				e.preventDefault();
			}
	  }).on('blur', function(){
	  if($(this).val() == '') return;
					
	        var trans_num = $(this).val().replace(/-/gi,'');
	        if(trans_num != null && trans_num != '')
	        {
	            if(trans_num.length==11 || trans_num.length==10) 
	            {   
	                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
	                if(regExp_ctn.test(trans_num))
	                {
	                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
	                    $(this).val(trans_num);
	                }
	                else
	                {
	                    alert("유효하지 않은 전화번호 입니다.");
	                    $(this).val("");
	                    $(this).focus();
	                }
	            }
	            else 
	            {
	                alert("유효하지 않은 전화번호 입니다.");
	                $(this).val("");
	                $(this).focus();
	            }
	        }
	  });  
		
	
	// 사용자의 자료 입력여부를 검사하는 함수
	$('#paymentBtn').click(function(){
    	if( $.trim($("#ol_name2").val()) == '' ){
            alert("받으실분 이름을 입력해주세요 ");
            $("#ol_name").focus();
            return;
        }
    	
    	if($.trim($("#postcode").val())==''){
    		alert("주소을 입력해주세요.");
    		$('#postcode').focus();
    		return;
    	}
    	
    	if($.trim($("#detailAddress").val())==''){
    		alert("상세주소을 입력해주세요.");
    		$('#detailAddress').focus();
    		return;
    	}
    	 	
    	if($.trim($('#tellcheck').val())==''){
    		alert("전화번호를 입력해주세요.");
    		$('#tellcheck').foucs();
    		return;
    	}
    	
    	
    	$('#olAddr').val($('#postcode').val()+" "+$('#address').val()+" "+$('#detailAddress').val());
    	
    	
    
       
       
        document.orderlist.submit();
	});
	
	
})