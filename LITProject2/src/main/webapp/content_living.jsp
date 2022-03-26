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

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">
            <span class="span1">
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='mypage.jsp'" style="font-family: 'Nanum Myeongjo', serif;">Mypage</button>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
    
            
    
            </span>
		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">리빙</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
			<!-- 추가 -->
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
						<!-- target="_blank" 완료 -->
							<a href="https://www.coupang.com/vp/products/4729986254?itemId=5992660161&vendorItemId=73290463344&sourceType=srp_product_ads&clickEventId=75db82da-eaf7-44a3-8636-29931a3b938b&korePlacement=15&koreSubPlacement=6&q=%EB%B2%A0%EA%B2%8C&itemsCount=36&searchId=4d5cc7272a244e81bd81517dc455c261&rank=5&isAddedCart="target="_blank"><img src="./img_living/리빙베게.jpg"
									class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">베게</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/28730577?itemId=110289996&vendorItemId=3059609743&sourceType=srp_product_ads&clickEventId=f86b9edd-3802-4849-b9a1-1a3d9ba95e0d&korePlacement=15&koreSubPlacement=1&q=%EB%9D%BC%ED%85%8D%EC%8A%A4+%EB%A7%A4%ED%8A%B8%EB%A6%AC%EC%8A%A4&itemsCount=36&searchId=0724f824f797408fae8f21fa66a8f47e&rank=0&isAddedCart="target="_blank"><img src="./img_living/리빙매트리스.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">매트리스</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
					<div class="card" style="width: 18rem;">
						<a href="https://www.coupang.com/vp/products/4797132556?itemId=6153998527&vendorItemId=73450212697&sourceType=srp_product_ads&clickEventId=9515a7fb-013c-4b3c-aad0-9f19250efe97&korePlacement=15&koreSubPlacement=1&q=%EC%95%88%EB%8C%80&itemsCount=36&searchId=deac6104dfaa4c1a92680379c2d6ca40&rank=0&isAddedCart="target="_blank"><img src="./img_living/리빙안대.jpg" class="card-img-top" width="300px" height="220"></a>
						<div class="card-body">
							<p class="card-text" style="text-align: center">안대</p>
						</div>
					</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/2348099928?itemId=4072050680&vendorItemId=78408866734&sourceType=srp_product_ads&clickEventId=495bdc10-b66b-442f-b521-3524d28a4c94&korePlacement=15&koreSubPlacement=1&q=%EC%98%A8%EC%88%98%EB%A7%A4%ED%8A%B8&itemsCount=36&searchId=a8fcd655d7bd4552bc7afb97b65dccae&rank=0&isAddedCart="target="_blank"><img src="./img_living/리빙온수매트.png" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">온수매트</p>
							</div>
						</div>
					</td>
					
				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/5381078624?itemId=7992646530&vendorItemId=75281506604&sourceType=srp_product_ads&clickEventId=dec5873f-5746-4886-9452-518de3974150&korePlacement=15&koreSubPlacement=1&q=%EB%B0%94%EB%94%94%ED%95%84%EB%A1%9C%EC%9A%B0&itemsCount=36&searchId=49daf002df994d5f86a7010015b4f89b&rank=0&isAddedCart="target="_blank"><img src="./img_living/리빙바디필로우.jpg " class="card-img-top" width="300px" height="220"></a>
								<p class="card-text" style="text-align: center">바디필로우</p>
							</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6287026153?itemId=12935531344&vendorItemId=80199938635&q=%EC%9E%A0%EC%98%B7&itemsCount=36&searchId=12591285ebba4006b2fba3860c10765b&rank=1&isAddedCart="target="_blank"><img src="./img_living/리빙잠옷.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">잠옷</p>
							</div>
						</div>
					</td>
				</tr>



			</table>




			<br>
			<br>
			<h4 id="p2">추가하고 싶은 리빙 제품이 있다면 알려주세요</h4>
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