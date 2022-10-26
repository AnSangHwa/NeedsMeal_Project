<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>헤더</title>
<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css?after">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/main-page.css">
<link rel="stylesheet" href="css/material_view_page.css">
<link rel="stylesheet" href="css/inquiry.css">
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" href="css/passwardCheck.css">
<link rel="stylesheet" href="css/eventView.css">


</head>
<body>
	<!-- Start Main Top -->
	<div class="main-top">
		<div class="container-fluid">
			<div class="row">

				<div class="col-12 headerColor">
					
					<div class="login-box">
						<a href="05_login.do">
							<button class="btn btn-outline-info">로그인</button>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- End Main Top -->

	<div class="navbar-header container">
		<div class="row">

			<div class="logo col-7">
				<a class="navbar-brand " href="01_main.do"><img
					src="images/로고.png" class="logo" alt=""></a>
			</div>
			<div class="col-5">
				
			</div>

		</div>


	</div>
	<!-- Start Main Top -->
	<header class="main-header">
		<!-- Start Navigation -->
		<nav
			class="navbar navbar-expand-lg  bg-light navbar-default bootsnav col-md-12 ">
			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbar-menu" aria-controls="navbars-rs-food"
					aria-expanded="false" aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="menu">
				<div class="collapse navbar-collapse" id="navbar-menu">
					<ul class="nav navbar-nav ml-auto" data-in="fadeInDown"
						data-out="fadeOutUp">
						<li class="dropdown active"><a href="01_productList.do"
							class="nav-link dropdown-toggle " data-toggle="dropdown">밀키트</a>
							<ul class="dropdown-menu">
								<li><a href="99_mealCtgList.do?ctg_id=1001">한식</a></li>
								<li><a href="99_mealCtgList.do?ctg_id=1002">양식</a></li>
								<li><a href="99_mealCtgList.do?ctg_id=1003">아시아</a></li>
								<li><a href="99_mealCtgList.do?ctg_id=1004">분식/야식</a></li>
							</ul>
						</li>
						<li class="dropdown active"><a href="01_itemList.do"
							class="nav-link dropdown-toggle " data-toggle="dropdown">재료</a>
							<ul class="dropdown-menu">
								<li><a href="99_item_CtgList.do?ctg_id=2001"> 채소 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2002"> 수산 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2003"> 육류 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2004"> 소스/육수 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2005"> 밑반찬 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2006"> 간식 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2007"> 면 </a></li>
                                <li><a href="99_item_CtgList.do?ctg_id=2008"> 그외 </a></li>            
							</ul></li>
						<li class="dropdown active"><a href="01_bestMealList.do"
							class="nav-link">베스트상품</a></li>
						<li class="nav-item"><a class="nav-link"
							href="01_newMealList.do">신메뉴</a></li>
						<li class="nav-item"><a class="nav-link"
							href="01_communityList.do">고객소통</a></li>
						<li class="nav-item"><a class="nav-link"
							href="01_eventList.do">이벤트</a></li>


					</ul>
				</div>
			</div>
			<!-- /.navbar-collapse -->




			<!--오른쪽 사이드바 시작-->
			<div class="right-sidebar-mini right-sidebar">
				<div class="right-sidebar-panel p-0">
					<div class="iq-card shadow-none">
						<div class="iq-card-body p-0">
							<div class="side-on">
								<table class="side-tb">
                                    <tr class="good-login" style="display: none">
                                        <td>
                                            <a href="02_MyPage.do"><img src="images/${u_grade}등급.jpg" style="width: 80px; height: 80px;"></a>
                                        </td>
                                        <td>
                                            	<strong>${u_name}</strong> 님이 <br> 접속하셨습니다.
                                            <a href="02_MyPage.do"><button class="btn btn-my-page">마이페이지</button></a>
                                            <button id="logOutBtn" class="btn log-out" onclick="location.href = 'logOut.do'">로그아웃</button>
                                        </td>
                                     </tr>
                                     <tr class="not-login" >
 										<td style="padding-left: 30px;"> 
                                            	로그인을<br> 하지 않았습니다.<br>
                                        </td>
                                           <td>
                                           
                                            <a class="go-log-in" href="05_login.do"><button class="btn">로그인</button></a>
                                           </td>
                                    </tr>
                                </table>

								<ul class="cart-list">
                                    <li>
                                        <a href="02_orderList.do"><img src="./images/구매내역.png" style="width: 80px; height: 80px;"></a>
                                        <a href="03_cart.do"><img src="./images/장바구니.png" style="width: 80px; height: 80px;"></a>
                                        <a href="03_paymentForm.do"><img src="./images/주문하기.png" style="width: 80px; height: 80px;"></a>
                                    </li>
                                    <li>
                                          <a href="02_QnAForm.do"><button class="btn btn-primary">1:1문의</button></a>
                                        <a href="02_productQnAList.do"><button class="btn btn-primary">고객센터</button></a>
                                    </li>
                                    <li>
                                        <a href="01_eventList.do"><button class="btn btn-primary">이벤트</button></a>
                                        <a href="01_communityList.do"><button class="btn btn-primary">상품후기</button></a>
                                    </li>
<!--                                     <li> -->
<!--                                        			 내가 본 페이지 -->
<!--                                     </li> -->
                                </ul>
							</div>
							<!-- ---여기가 사이드바------------------------------------------------------------------------------------ -->
							<div class="My-side">
								<div class="right-sidebar-toggle bg-primary mt-3">
									
										<strong style="color:black;">&lt; &gt;</strong>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 사이드바 종료-->
		</nav>
		<!-- End Navigation -->
	</header>
	<!-- End Main Top -->

	<!-- End Navigation -->

	<!-- End Main Top -->
	<!-- 여기까지 헤더---------- -->

</body>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script>
	
	let session = "${u_name}";
	if(session != ""){
		$('.good-login').attr("style","display: block");
		$('.not-login').attr("style","display: none");
		$('.login-box a button').attr("style","display: none");
		$('.login-box a button').text("");
		$('.login-box a').text("안녕하세요!"+"  "+session+" 님");
		$('.login-box a').attr("href","02_MyPage.do")
	}else{
				
		$('.good-login').attr("style","display: none");
		$('.not-login').attr("style","display: block");
		$('.login-box a button').attr("style","display: block");
		$('.login-box a button').text("로그인");
		
		
	}
	
	
	</script>
</html>
