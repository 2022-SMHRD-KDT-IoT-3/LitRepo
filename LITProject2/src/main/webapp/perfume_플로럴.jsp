<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
	<title>recommand</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
	
	
	#img{
		width: 20px;
		height: 20px;
	}
	
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">Flower</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
			<!-- 메인추가 -->
			    <li><a href="content_main.jsp">Main</a></li>
				<li><a href="content_perfum.jsp">All</a></li>
				<li><a href="perfume_시트러스.jsp">Citrus</a></li>
				<li><a href="perfume_플로럴.jsp">Flower</a></li>
				<li><a href="perfume_프루티.jsp">Fruit</a></li>
				<li><a href="perfume_우디.jsp">Wood</a></li>

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
							<a href ="https://www.coupang.com/vp/products/6102014865?itemId=2310815177&vendorItemId=70307610802&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=18&isAddedCart="target="_blank"><img src="./img_perfume/플로럴프리지아.PNG" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">봄에 오는 달콤한 프리지아</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6226573364?itemId=12490601612&vendorItemId=79759300142&q=%EC%9E%A5%EB%AF%B8%ED%96%A5%EC%B4%88&itemsCount=36&searchId=0b7ed3cab494472eb29cfbde87705241&rank=1&isAddedCart="target="_blank"><img src="./img_perfume/플로럴장미.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">고혹적인 들장미향</p>
							</div>
						  </div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/4977953368?itemId=1025379210&vendorItemId=70996921337&sourceType=srp_product_ads&clickEventId=c30ce02b-2b89-48df-a315-06766f7c4408&korePlacement=15&koreSubPlacement=5&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=4&isAddedCart="target="_blank"><img src="./img_perfume/플로럴코튼.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">안기고 싶은 포근한 코튼향</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815169&vendorItemId=70307610733&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=22&isAddedCart="target="_blank"><img src="./img_perfume/플로럴웨딩부케.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">화사하고 깨끗한 웨딩 부케</p>
							</div>
						  </div>
					</td>
				</tr>
				</table>
			



			<br>
			<br>
			<h4 id="p2">추가하고 싶은 향기가 있다면 알려주세요</h4>
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