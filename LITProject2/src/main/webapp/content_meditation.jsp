<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>recommand</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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

#bt {
	text-align: center;
	margin-left: 22px;
	margin-right: 20px;
	color: white;
	font-size: 17px;
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
			<h1 id="id1">명상</h1>
			<br> <br> <br>
		</header>



		<table>
			<tr align="center">
				<td><a id="bt" href="content_main.jsp">Main</a> <a id="bt"
					href="content_perfum.jsp">향초</a> <a id="bt"
					href="content_meditation.jsp">명상</a> <a id="bt"
					href="content_asmr.jsp">ASMR</a> <a id="bt"
					href="content_living.jsp">리빙 제품</a> <a id="bt"
					href="content_tea.jsp">차</a></td>
			</tr>
		</table>

		<!-- Content -->
		<section id="content" class="main">
			<table>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<!-- target="_blank"완료 -->
							<a href="https://www.youtube.com/watch?v=nlX8Bj6VT4o"
								target="_blank"><img src="./img_meditation/명상명상.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">명상</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/1305259983?itemId=2320100298&vendorItemId=78780013918&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=e478d1ed-5375-49fd-a4e9-9e2e16b3de4f&korePlacement=15&koreSubPlacement=1&q=%EB%AA%85%EC%83%81%EC%9A%A9%ED%92%88&itemsCount=36&searchId=5fbef06f73d649da836a02d9d4f6f3fe&rank=0&isAddedCart="
								target="_blank"><img src="./img_meditation/명상인센스.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">인센스스틱</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/2056847696?itemId=3496278303&vendorItemId=71482508441&sourceType=srp_product_ads&clickEventId=8ecd2f62-cab1-4d43-b5dc-113dd1979a3d&korePlacement=15&koreSubPlacement=6&q=%EC%95%84%EB%A1%9C%EB%A7%88%EC%98%A4%EC%9D%BC&itemsCount=36&searchId=422130f583a94169bfb62303c306787e&rank=5&isAddedCart="
								target="_blank"><img src="./img_meditation/명상아로마.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">아로마</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=1vfMmDuTweQ"
								target="_blank"><img src="./img_meditation/명상스트레칭.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">스트레칭</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=gO5tVebwG_M"
								target="_blank"><img src="./img_meditation/명상요가.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">요가</p>
							</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/306146801?itemId=965291509&vendorItemId=5369727465&q=%EB%A7%88%EC%82%AC%EC%A7%80%EB%B3%BC&itemsCount=36&searchId=333a32fe54864e2c8947ba8512aa4859&rank=0&isAddedCart="
								target="_blank"><img src="./img_meditation/명상마사지.jpg"
								class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">마사지 볼</p>
							</div>
						</div>
					</td>
				</tr>



			</table>




			<br> <br>
			<h4 id="p2">추가하고 싶은 컨텐츠 있다면 알려주세요</h4>
			<p id="p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
			<br>

		</section>


	</div>



	<br>
	<br>
	<br>
	<br>
	<br>
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