<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<title>DeamCatcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<style>
#p1 {
	margin: auto;
	text-align: center;
	font-weight: bold;
	font-size: 20px;
}

#p2{
text-align:center;
}
#id{
    margin:500px;
}

.image.main{
	display:inline;
	margin-left:auto;
	margin-right:auto;
}
.row > * {
    padding: 0 0 0 4em;
	background-color:rgb(237, 224, 250);
	
}
		.span1 {
	right: -2.5px;
	margin-right: 10px;
	top: 5px;
	position: absolute;
}
#header{
    padding-top:100px;
}
</style>

</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<span class="span1"style="font-family: 'Nanum Myeongjo', serif;">

			<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" onclick="location.href='mypage.jsp'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">상황별 추천</h1>
			<br>
			<p>숙면에 도움을 줄 수 있는 상황별 색상을 추천해드립니다</p>
		</header>

		<!-- Main -->
		<div id="main">
		<div class="row" style="background-color: rgb(237, 224, 250);">
			<!-- Content -->
			<section id="content" class="main">
			
				<img src="상황/잘때1.jpg" width="150" />
					<a href=""></a>
				
					<img src="상황/공부1.jpg" width="150" />
					<a href=""></a>
					<img src="상황/파티1.jpg" width="155" />
					<a href=""></a>
					<img src="상황/일1.jpg" width="150" />
					<a href=""></a>
					<img src="상황/책1.jpg" width="150" />
					<a href=""></a>
					<img src="상황/아기1.jpg" width="148" />
	

				</div>
				
		

</div>
		</div>
	</section>
		<!-- Footer -->
		<footer id="footer">
			<section>
				<br> <br>
				<br>
				<p id="p2" style="font-size:16px">오늘도 당신의 숙면을 위해 노력하겠습니다. 편안한 밤 되세요</p>
				<ul class="actions">
				</ul>
			</section>
			<section></section>
		</footer>

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