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
	margin-left: 20px;
	margin-right: 20px;
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
<br>
<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
		style="margin-left: 10px;">HOME</button>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">수면 관련 팁</h1>
			<br> <br>
		</header>

		<table id="category">
			<tr align="center">
				<td><a id="bt" href="doctor main.jsp">메인</a> <a id="bt"
					href="doctormine.jsp">수면 건강 피드백</a> <a id="bt" href="doctortip.jsp">수면
						관련 팁</a> <a id="bt" href="doctorcheck.jsp">수면상태체크</a></td>
			</tr>
		</table>

		<br> <br> <br> <br>
		<!-- Content -->
		<section id="content" class="main">


			</table>




			<br> <br>
			<h4 id="p2">추가하고 싶은 향기가 있다면 알려주세요</h4>
			<p id="p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
			<br>

		</section>


	</div>

	<button type="button" id="gotop">
		<a href="#top">맨 위로</a>
	</button>


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