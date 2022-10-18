	$('#join').click(function(){
		
		$('#addr').val($('#postcode').val()+" "+$('#address').val()+" "+$('#detailAddress').val());
		$('#birth').val($('#birthYear').val()+$('#birthMonth').val()+$('#birthDay').val());
		
		if($('#password').val() != $('#password_check').val() ){
			alert("비밀번호가 서로 다릅니다");
			
			return;
		}else if($('#password').val() == ""){
			$('#join').attr("type","submit");
		}else{
			$('#join').attr("type","submit");
		
		}
		 
	
	})
	
	
