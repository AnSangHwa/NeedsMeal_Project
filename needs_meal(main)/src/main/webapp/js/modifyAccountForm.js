	$('#modify').click(function(){
		if($('#postcode').val() != ""){
			
			$('#addr').val($('#postcode').val()+" "+$('#address').val()+" "+$('#detailAddress').val());
		}
		$('#birth').val($('#birthYear').val()+$('#birthMonth').val()+$('#birthDay').val());
	
	})
	
