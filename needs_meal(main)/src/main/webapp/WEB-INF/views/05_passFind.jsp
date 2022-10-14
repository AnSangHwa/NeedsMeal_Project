<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="00_header.jsp"></jsp:include>
<body>

	<!-- Start Cart  -->
	<div class="cart-box-main">
		<div class="container">

			<div class="row">
				<div class="col-sm-6 col-lg-3 mb-3"></div>
				<div class="col-sm-6 col-lg-6 mb-3">
					<div class="checkout-address">

						<div class="title-left">
							<h3>회원 비밀번호찾기</h3>
						</div>

						<form class="needs-validation" action="passFind.do">

							<!-- 아이디
                                 비밀번호
                                 이름
                                 이메일
                                 전화번호
                                 주소
                                 생년월일
                            -->
							
							<div class="row">

								<div class="col-8">
									<label for="id">아이디</label> 
									<input type="text"
										class="form-control" id="id" name="u_id" placeholder="아이디" value=""
										required>
									<label for="email1">이메일</label> <br id="br">
                 					<input type="email" class="form-control col-7" style="display: inline-block;" id="email1" name="u_email" placeholder="가입이메일주소"  >
                                    <select class="form-control col-4" style="display: inline-block;" id="email2" >
                                        <option value="">직접입력</option>
                                        <option value="@naver.com">@naver.com</option>
                                        <option value="@hanmail.net">@hanmail.net</option>
                                        <option value="@nate.com">@nate.com</option>
										<option value="@daum.net">@daum.net</option>
										<option value="@hotmail.com">@hotmail.com</option>
										<option value="@gmail.com">@gmail.com</option>
										<option value="@icloud.com">@icloud.com</option>
                                    </select>
                                    <label for="id">전화번호</label> 
									<input type="text" class="form-control mb-4" id="id" name="u_tell"  placeholder="- 없이 입력하세요" value="" required>
									
								</div>

								<div class="col-4 " style="text-align: center;">
									<br><br>
									<button class="btn hvr-hover" type="submit"
										style="width: 125px; height: 110px; color: white;">비밀번호 변경</button>
								</div>
							</div>



							<div class="row">
								<div class="col-md-3 mb-3"></div>

								<div class="col-md-3 mb-3">
									<button class="btn hvr-hover"
											type="reset"
											style="width: 115px; color: white; font-size: small;"> 취소하기 </button>
									
								</div>
								<div class="col-md-3 mb-3">
									<a href="05_login.do"><button class="btn hvr-hover"
											type="button"
											style="width: 115px; color: white; font-size: small; background-color: rgba(23, 45, 15, 0.848);">로그인하기</button>
									</a>
								</div>
							</div>
						</form>
						<form name="passModifyfrm" action="passModify.do">
							<input id="passModifyId" name="u_id" type="hidden">
							<input id="passModify" name="u_pwd" type="hidden">
							
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!-- End Cart -->

</body>
<jsp:include page="00_footer.jsp"></jsp:include>
<script>
	let result = "${vo.count}";
	
	
	
	if(result == "0"){
		alert("일치하는 내용의 사용자가 없습니다");
		
	}else if(result == "1"){
		
		let pass1 = prompt("변경하실 비밀번호를 입력해주세요");
		let pass2 = prompt("동일하게 다시 한번 비밀번호를 입력해주세요");
		
		
		if(pass2 == ""){
			alert("값을 입력해주세요");
			
			
		}else if(pass1 == pass2){
						
			let id = "${vo.u_id}";
			$('#passModifyId').val(id);
			$('#passModify').val(pass2);
			passModifyfrm.submit();
			alert("비밀번호가 변경되었습니다");
						
			
		}else if(pass1 != pass2){
			alert("입력하신 비밀번호가 서로 다릅니다 다시 시도해주세요");
		}
				
		
	}

</script>
</html>