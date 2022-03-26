<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
	<title>DreamCatcher</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);


		#img {
			width: 20px;
			height: 20px;
		}
        .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
#id1{
	padding-top: 90px;
}
	</style>

</head>


<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>

	<!-- Wrapper -->
	<div id="wrapper">
		<span class="span1">

			<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;" >HOME</button>
			<button type="button" onclick="location.href='mypage.jsp'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span>
		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">차</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
			<!-- 수정 -->
                <li><a href="content_main.jsp">Main</a></li>
                <li><a href="content_perfum.jsp">향초</a></li>
				<li><a href="content_meditation.jsp">명상</a></li>
				<li><a href="content_asmr.jsp">ASMR</a></li>
				<li><a href="content_living.jsp">리빙 제품</a></li>
				<li><a href="content_tea.jsp">차</a></li>

			</ul>
		</nav>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">
			<table>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank"완료 -->
							<a href="https://www.coupang.com/vp/products/2311561?itemId=5135119583&vendorItemId=74540421394&pickType=COU_PICK&q=%EC%BA%90%EB%AA%A8%EB%A7%88%EC%9D%BC%ED%8B%B0&itemsCount=36&searchId=d4b2dce08b4845f0a367a2df1df5dc41&rank=2&isAddedCart="target="_blank"><img src="./img_tea/차캐모마일.jpg"
									class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">캐모마일</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/1082648695?itemId=2035763559&vendorItemId=70035188390&q=%EA%BF%80%EC%B0%A8&itemsCount=36&searchId=493023567fff471c8b458cd9b40b83a0&rank=1&isAddedCart="target="_blank"><img src="./img_tea/차꿀차.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">꿀차</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
					<div class="card" style="width: 18rem;">
						<a href="https://www.coupang.com/vp/products/18024473?itemId=72405898&vendorItemId=3117072636&q=%EB%9D%BC%EB%B2%A4%EB%8D%94%EC%B0%A8&itemsCount=36&searchId=d2aee0cdf16a4797a54d4ba79949cf11&rank=1&isAddedCart="target="_blank"><img src="./img_tea/차라벤더차.jpg" class="card-img-top" width="300px" height="220"></a>
						<div class="card-body">
							<p class="card-text" style="text-align: center">라벤더차</p>
						</div>
					</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/7039784?itemId=31205904&vendorItemId=3000131322&pickType=COU_PICK&q=%EB%8C%80%EC%B6%94%EC%B0%A8&itemsCount=36&searchId=7e8a2e9fcd7241caac138dec1463dc4a&rank=1&isAddedCart="target="_blank"><img src="./img_tea/차대추차.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">대추차</p>
							</div>
						</div>
					</td>
					
				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/183748827?itemId=526176763&vendorItemId=3000398051&q=%ED%8C%A8%ED%8D%BC%EB%AF%BC%ED%8A%B8&itemsCount=36&searchId=5ac538716c654b20933e993076243ddd&rank=1&isAddedCart="target="_blank"><img src="./img_tea/차패퍼민트.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">페퍼민트</p>
							</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/198253289?itemId=572325705&vendorItemId=79468288958&sourceType=srp_product_ads&clickEventId=ea33d7ea-03ea-4580-a8c3-2fd99b534357&korePlacement=15&koreSubPlacement=1&q=%EC%98%A4%EB%AF%B8%EC%9E%90%EC%B0%A8&itemsCount=36&searchId=c13281d7ea3d412b86e2ec14ff6083ba&rank=0&isAddedCart="target="_blank"><img src="./img_tea/차오미자차.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">오미자차</p>
							</div>
						</div>
					</td>
				</tr>



			</table>




			<br>
			<br>
			<h4 id="p2">추가하고 싶은 차가 있다면 알려주세요</h4>
			<p id="p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
			<br>

		</section>


	</div>

	<button type="button" id="gotop"><a href="#top">맨 위로</a></button>


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