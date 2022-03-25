<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>recommand</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	
	<style>

		#p1{
			margin: auto;
			text-align: center;
			font-weight: bold;
			font-size: 17px;
			color: rgba(15, 15, 15, 0.705);
		}

		#p2{
			margin: auto;
			text-align: center;
		}

		#tr2{
			margin-top: 10pxs;
		}

		#minit1{
			background-color :rgba(253, 253, 252, 0.767);
			border-radius: 40px;
		}

		
		#gotop{
			left: 10px;
			bottom: -50px;
			position: relative;
		}
        .span1 {
				right: 10px;
	top: 10px;
	position: absolute;
}
#id1{
	padding-top: 40px;
}

	</style>

	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
                <span class="span1">

					<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary">HOME</button>
					<button type="button" onclick="location.href='mypage.jsp'" class="btn btn-outline-secondary">마이페이지</button>
					<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary">로그아웃</button>
				</span>
				<!-- 맨위로 버튼 누를때 이동해올 곳 -->
				<!-- 맨위로 버튼 누를때 이동해올 곳 -->
				<h1 id ="top"></h1>
				
				<!-- Header -->
					<header id="header">
						<h1 id="id1">향기 추천</h1>
						<br>
						<p>숙면에 도움을 줄 수 있는 향초를 추천해드립니다</p>
					</header>


						<!-- Content -->
							<section id="content" class="main">
						
								<table>
									<tr>
										<td id="minit1">
											<b></b><p id ="p1">시트러스 계열</p></b>
											<br>
											<span class="image main">
												<a href="https://www.coupang.com/vp/products/42104726?itemId=152934618&vendorItemId=3353486764&q=%EC%8B%9C%ED%8A%B8%EB%9F%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=710e426faa854181aac3c25887c29bf6&rank=3&isAddedCart="><img src="./img_perfume/orange-g0e668b7e2_640.jpg" /></a></span>

										</td>
										</tr>

										<!-- 빈칸용도 -->
										<tr>
											<td><br></td>
										</tr>
										
									
										<tr>
										<td id="minit1">
											<br>
											<b><p id ="p1">플로럴 계열</p></b>
											<br>
											<span class="image main">
												
												<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815172&vendorItemId=70307610759&sourceType=srp_product_ads&clickEventId=575537ee-2aab-4dd6-af4d-0051d45e528d&korePlacement=15&koreSubPlacement=1&q=%ED%94%8C%EB%A1%9C%EB%9F%B4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=bba77e41d3ae47cf97dc7743787289ea&rank=0&isAddedCart="><img src="./img_perfume/bouquet-gdf5285dab_640.jpg" alt="" /></a>
												</span>
											</tr>
										
										<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
											<br>
											<b><p id ="p1">우디 계열</p></b>
											<br>
											<span class="image main">
											<a href="https://www.coupang.com/vp/products/6078190178?itemId=11253671426&vendorItemId=78530723091&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=87eef661441441c4bfef7ec9581303a3&rank=2&isAddedCart="><img src="./img_perfume/fern-ga96831813_640.jpg" alt="" /></a>
											</span>
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
												<br>
												<b><p id ="p1">프루티 계열</p></b>
												<br>	
												<span class="image main">
												<a href="https://www.coupang.com/vp/products/5671646741?itemId=9341365232&vendorItemId=76626639724&q=%ED%94%84%EB%A3%A8%ED%8B%B0+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=d281b3a6a209410bb7352cf6ac87dc2c&rank=2&isAddedCart="><img src="./img_perfume/berries-g7a3dc680d_640.jpg" alt="" /></a>
												</span>
												
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
												<td id="minit1">
													<br>
												<b><p id ="p1">오셔닉 계열</p></b>
												<br>
												<span class="image main">
												<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815180&vendorItemId=70307610832&q=%EC%98%A4%EC%85%94%EB%8B%89+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=e6fc2ba78e094bcf9b133f7cb3d2c0c6&rank=14&isAddedCart="><img src="./img_perfume/polynesia-gd858f7439_640.jpg" alt="" /></a>
												</span>
												</tr>

									<!-- 전체 테이블 영역 마지막 -->
									</tr>
								</table>



								<br>
								<br>
								<h4 id = "p2">추가하고 싶은 향기가 있다면 알려주세요</h4>
								<p id = "p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
								<br>
							
							</section>

							
						</div>

							<button type="button" id = "gotop"><a href="#top">맨 위로</a></button>
						
						
						<br><br><br><br><br>
					</div>
					

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>