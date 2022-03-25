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
	<button type="button" onclick="" class="btn btn-outline-secondary" style="margin-left: 10px;">HOME</button>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">당신을 위한 컨텐츠</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
				<li><a href="content_perfum.jsp">향초</a></li>
				<li><a href="content_meditation.jsp">명상</a></li>
				<li><a href="content_asmr.jsp">ASMR</a></li>
				<li><a href="content_living.jsp">리빙 제품</a></li>
				<li><a href="content_tea.jsp">차</a></li>

			</ul>
		</nav>

		<table>
			<tr align="center">
				<td>
					<a id="bt" href ="content_perfum.jsp">향초</a>
					<a id="bt" href = "content_meditation.jsp">명상</a>
					<a id="bt" href="content_asmr.jsp">ASMR</a>
					<a id="bt" href="content_living.jsp">리빙 제품</a>
					<a id="bt" href = "content_tea.jsp">차</a>
				</td>
			</tr>
		</table>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">



			<br>
			<br>
			<h4 style="text-align: center;">추가하고 싶은 카테고리가 있다면 알려주세요</h4>
			<p style="text-align:center;">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
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