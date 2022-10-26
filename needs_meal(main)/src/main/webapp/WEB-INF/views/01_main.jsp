<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<jsp:include page="00_header.jsp"></jsp:include>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>메인페이지</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

  
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- 인기순위 start -->
    <!-- <div id="slides-shop" class="cover-slides">
        <ul class="slides-container">
            <li class="text-center">
                <img src="images/밀키트/물냉면.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>인기순위 1위</strong></h1>
            
                            <p><a class="btn hvr-hover" href="01_productList.jsp">구매하러가기</a></p>
                        </div>
                    </div>
                </div>
            </li>
            <li class="text-center">
                <img src="images/메인페이지 인기순위 이미지2.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="m-b-20"><strong>인기순위 2위</strong></h1>
                            <p><a class="btn hvr-hover" href="01_productList.jsp">구매하러가기</a></p>
                        </div>
                    </div>
                </div>
            </li>
           
        </ul>
        <div class="slides-navigation">
            <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
            <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
        </div>
    </div> -->
    <!-- 인기순위 end -->


    <div class="container mt-3">
     
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/메인페이지이미지/메인페이지 이미지1.jpg" alt="Los Angeles" width="1100" height="500">
                </div>
                <div class="carousel-item">
                    <img src="images/메인페이지이미지/메인페이지 이미지2.jpg" alt="Chicago" width="1100" height="500">
                </div>
                <div class="carousel-item">
                    <img src="images/메인페이지이미지/메인페이지 이미지3.jpg" alt="New York" width="1100" height="500">
                </div>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next"> 
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>










     <!-- 베스트상품 start  -->
     <div class="best-mil">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/밀키트/감바스알하이요.png" alt="" />
                    <div class="hov-in">
                        <a href="01_productList.do">구매하러가기</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/밀키트/로제파스타.png" alt="" />
                    <div class="hov-in">
                        <a href="01_productList.do">구매하러가기</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/밀키트/메밀소바.png" alt="" />
                    <div class="hov-in">
                        <a href="01_productList.do">구매하러가기</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/밀키트/물냉면.png" alt="" />
                    <div class="hov-in">
                        <a href="01_productList.do">구매하러가기</a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/밀키트/밀푀유나베.png" alt="" />
                    <div class="hov-in">
                        <a href="01_productList.do">구매하러가기</a>
                    </div>
                </div>
            </div>
           
        </div>
    </div>
    <!-- 베스트 상품 end  -->

 


    <!-- 광고 start-->
 <!-- <div class="test">
    <div class="">
        <div id="slides-shop1" class="cover-slides1">
            <ul class="slides-container">
                <li class="text-center">
                    <img  src="images/광고배너/광고배너1.jpg" alt="">
                    
                </li>
                <li class="text-center">
                    <img src="images/광고배너/광고배너2.jpg" alt="">
                    
                </li>
                
                <li class="text-center">
                    <img src="images/광고배너/광고배너3.jpg" alt="">
                
                </li>
            </ul>
            <div class="slides-navigation ">
                <a href="#" class="next"><i class="fa fa-angle-right " aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div>
        </div>
    </div>    
 </div>   -->


<!-- 광고 start-->
 <div class="container"></div>
 <div id="demo" class="carousel slide" data-ride="carousel">

   <div class="carousel-inner">
     <!-- 슬라이드 쇼 -->
     <div class="carousel-item active">
       <!--가로-->
       <img class="d-block w-100" 
         src="images/광고배너/광고배너1.jpg"
         alt="First slide">
         <div class="carousel-caption d-none d-md-block">
             <h5>TEST</h5>
             <p>testtesttest</p>
       </div>
     </div>
     <div class="carousel-item">
       <img class="d-block w-100"
         src="images/광고배너/광고배너2.jpg"
         alt="Second slide">
     </div>
     <div class="carousel-item">
       <img class="d-block w-100"
         src="images/광고배너/광고배너3.jpg"
         alt="Third slide">
     </div>
</div>   
   <!-- / 슬라이드 쇼 끝 -->

   <!-- 왼쪽 오른쪽 화살표 버튼 -->
   <a class="carousel-control-prev" href="#demo" data-slide="prev">
     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
     <!-- <span>Previous</span> -->
   </a>
   <a class="carousel-control-next" href="#demo" data-slide="next">
     <span class="carousel-control-next-icon" aria-hidden="true"></span>
     <!-- <span>Next</span> -->
   </a>
   <!-- / 화살표 버튼 끝 -->
   
   <!-- 인디케이터 -->
   <ul class="carousel-indicators">
     <li data-target="#demo" data-slide-to="0" class="active"></li> <!--0번부터시작-->
     <li data-target="#demo" data-slide-to="1"></li>
     <li data-target="#demo" data-slide-to="2"></li>
   </ul>
   <!-- 인디케이터 끝 -->
 </div>

 







    <br>
    <br>
    <!-- 광고 end-->

 

<!-- 팝업창 start -->

 
   

    <!-- modal 영역 -->
  
        <div class="modal-wrap1">
            <a href="01_productList.do"><img class="modal-image1" src="images/광고 팜업창.png" alt=""></a>
            <button class="modal-close">닫기</button>
        </div>
    <!--  modal 영역 -->
    
<!-- 팝업창 end -->

    <!-- <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a> -->
	<jsp:include page="00_footer.jsp"></jsp:include>	
</body>

</html>