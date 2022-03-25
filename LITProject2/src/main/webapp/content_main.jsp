<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>Dream Catcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>


<!-- 추가한 곳 -->
<!-- 부트스트랩 추가부분 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

carousel-inner #img1 {
	width: 100%;
	height: auto;
}

#img {
	width: 20px;
	height: 20px;
}

#bt {
	text-align: center;
	margin-left: 20px;
	margin-right: 20px;
	color: white;
}

#bt1 {
	color: black;
	background-color: whitesmoke;
}

/* 추가된 부분 */

/* 이미지 투명하게 하기 */
#img1 {
	opacity: 0.7;
	filter: alpha(opacity = 50);
}

.carousel-caption {
	font-size: large;
	color: #f7f7f7;;
	font-weight: bold;
	margin-bottom: 4px;
}

#txt1 {
	text-align: center;
	color: #f7f7f7;
	;
}

.btn-outline-secondary {
	background-color: transparent;
	box-shadow: inset 0 0 0 0px rgb(255 255 255/ 35%);
	color: #ffffff;
	border-radius: 8px;
	border-color: rgb(255 255 255/ 35%);
	padding-right: 10px;
	width: 80px;
	font-size: 12px;
	margin-left: 10px;
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<br>

	<button type="button" onclick="location.href='main1.jsp'"
		class="btn btn-outline-secondary">HOME</button>
	</span>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 style="color: #f7f7f7;">당신을 위한 컨텐츠</h1>
			<br> <br>
		</header>



		<table>
			<tr align="center">
				<td><a id="bt" href="content_perfum.jsp">향초</a> <a id="bt"
					href="content_meditation.jsp">명상</a> <a id="bt"
					href="content_asmr.jsp">ASMR</a> <a id="bt"
					href="content_living.jsp">리빙 제품</a> <a id="bt"
					href="content_tea.jsp">차</a></td>
			</tr>
		</table>


		<br>
		<br>
		<!-- Content -->
		<section>

			<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
			</div>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="./img_content/메인향초.jpg" id="img1">
					<div class="carousel-caption">향초</div>
				</div>

				<div class="item">
					<img src="./img_content/메인명상.jpg" id="img1">
					<div class="carousel-caption">명상</div>
				</div>

				<div class="item">
					<img src="./img_content/메인리빙.jpg" id="img1">
					<div class="carousel-caption">리빙</div>
				</div>

				<div class="item">
					<img src="./img_content/메인ASMR.jpg" id="img1">
					<div class="carousel-caption">ASMR</div>
				</div>

				<div class="item">
					<img src="./img_content/메인차.jpg" id="img1">
					<div class="carousel-caption">차</div>
				</div>



			</div>
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			</a>
	</div>



	<br>
	<br>
	<br>
	<br>
	<h4 id="txt1">추가하고 싶은 카테고리가 있다면 알려주세요</h4>
	<p id="txt1" style="text-align: center;">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
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