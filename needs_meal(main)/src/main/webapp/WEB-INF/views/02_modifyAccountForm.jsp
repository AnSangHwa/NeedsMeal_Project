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

	<!-- Start My Account  -->
	<div class="my-account-box-main">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="mypage">
						<h3>마이페이지</h3>
						<ul>
							 <li><a href="02_MyPage.do">홈으로 </a></li>    
                            <li><a href="02_orderList.do"> 주문목록/배송조회 </a></li>    
                            <li><a href="02_insertMypass.do"> 회원정보변경 및 탈퇴 </a></li>       
                            <li><a href="02_productQnAList.do"> 고객문의 </a></li>    
                            <li><a href="02_productReview.do"> 나의 상품후기 </a></li>
						</ul>
					</div>
				</div>




				<div class="col-lg-9">
					<div class="my-basic">
						<h2>기본 정보</h2>
						<form name="profile" action="02_modifyAccountForm.do" method="get">
							<table class="my-account-modify">
								<tr>
									<td>아이디</td>
									<td colspan="1">${u_id}<input type="hidden" name="u_id" value="${u_id}"></td>
								</tr>

								<tr>
									<td>새 비밀번호</td>

									<td colspan="2"><input type="password" id="pass1" class="form-control" name="u_pwd" placeholder="8자리이상">
									</td>

								</tr>
								
								<tr>
								<td>새 비밀번호 확인</td>
									<td colspan="2"><input type="password" id="pass2"  class="form-control" placeholder="8자리이상">
									</td>
								</tr>

								<tr>
									<td>이름</td>
									<td colspan="2"><input type="text" class="form-control" name="u_name" value="${u_name}"></td>
								</tr>

								<tr>
									<td>생년월일</td>
									<td><select class="wide w-100"
											id="birthYear">
											<option value="" >년</option>
											<option value="2022">2022</option>
											<option value="2021">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											<option value="1930">1930</option>
											<option value="1929">1929</option>
											<option value="1928">1928</option>
											<option value="1927">1927</option>
											<option value="1926">1926</option>
											<option value="1925">1925</option>
											<option value="1924">1924</option>
											<option value="1923">1923</option>
											<option value="1922">1922</option>
											<option value="1921">1921</option>
											<option value="1920">1920</option>
											<option value="1919">1919</option>
											<option value="1918">1918</option>
											<option value="1917">1917</option>
											<option value="1916">1916</option>
											<option value="1915">1915</option>
											<option value="1914">1914</option>
											<option value="1913">1913</option>
											<option value="1912">1912</option>
											<option value="1911">1911</option>
											<option value="1910">1910</option>
											<option value="1909">1909</option>
											<option value="1908">1908</option>
											<option value="1907">1907</option>
											<option value="1906">1906</option>
											<option value="1905">1905</option>
											<option value="1904">1904</option>
											<option value="1903">1903</option>
											<option value="1902">1902</option>
											<option value="1901">1901</option>
											<option value="1900">1900</option>
										</select></td>
									<td><select class="wide w-100"
											id="birthMonth" >

											<option value="">월</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>

										</select></td>
									<td><select class="wide w-100"
											id="birthDay" >

											<option value="">일</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select></td>
								</tr>
										<input type="hidden" id="birth" name="u_birth">

								<tr>
									<td>이메일</td>
									<td colspan="2"><input type="text" class="form-control col-12"  id="email1" name="u_email" placeholder="가입이메일주소" value="${u_email}" ></td>
									<td><select class="form-control col-10"  id="email2">
											<option value="">직접입력</option>
											<option value="@naver.com">@naver.com</option>
											<option value="@gmail.com">@gmail.com</option>
											<option value="@daum.net">@daum.net</option>
											<option value="@nate.com">@nate.com</option>
									</select></td>
								</tr>

								<tr>
									<td>휴대폰번호</td>
									<td colspan="2"><input type="text" class="form-control" name="u_tell" value="${u_tell}"></td>
									
								</tr>



								<tr>
									<td rowspan="3">주소</td>
									<td colspan="2"><input type="text" class="form-control" id="postcode" placeholder="우편번호" readonly >
									</td>
									<td><div class="modify-btn" style="margin: 0">
									<button type="button" onclick="DaumPostcode()" >우편번호검색</button></div></td>
									
								</tr>

								<tr>
									<td colspan="3"><input type="text" class="form-control" placeholder="주소"	id="address" readonly ></td>
								</tr>

								<tr>
									<td colspan="3"><input type="text" class="form-control" id="detailAddress" 	placeholder="상세주소" ></td>
									<input type="hidden" id="addr" name="u_addr" value="${u_addr}">
								</tr>
							</table>
							<div class="col-lg-9">
								<div class="modify-btn">
									<input type='button' value='완료' id="modify"> 
									<input type='button' value='취소' onclick="location.href = '02_MyPage.do'"> 
									<input type="button" id="dropAccountBtn" value="회원탈퇴" onclick="dropAccount()">
								</div>

							</div>
						</form>
						<form name="drop" action="dropAccount.do">
							<input type="hidden" name="u_id" value="${u_id}">
						</form>

					</div>
				</div>



			</div>
		</div>
	</div>
	<!-- End My Account -->


</body>
<jsp:include page="00_footer.jsp"></jsp:include>
<script type="text/javascript">
	$('#modify').click(function(){
		
		
		if($('#pass1').val() != $('#pass2').val()){
			
			alert("비밀번호가 서로 일치하지 않습니다.");
			return;
		}else{
			
			alert("사용자 정보가 변경되었습니다");
			if($('#pass1').val() == ""){
				$('#pass1').val("${u_pwd}");
			}
			
			profile.submit();
		}
		
		
	})
	let birth = "${u_birth}"
	let arr =  birth.split('-');
		

	$('#birthYear').val(arr[0]);
	$('#birthMonth').val(arr[1]);
	$('#birthDay').val((arr[2].split(' '))[0]);
	
	function dropAccount(){
		
		if(confirm("기존 포인트 및 회원 혜택이 사라집니다\n정말 회원탈퇴를 하시겠습니까?")){
			
			drop.submit();
			
			alert("회원탈퇴 되었습니다");
			
		}
		
	}
	
	

</script>
</html>