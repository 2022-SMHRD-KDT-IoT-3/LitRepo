<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
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

			/* 메뉴 */
			.menu {
				text-align: center;
			}

			#main {
				background-color: rgba(255, 255, 255, 0.89);
			}


			.minititle {
				font-size: 20px;
				background-color: #cfb9e6a1;
				text-align: center;
				height: 30px;
				font-weight: 500;
			}

			/* padding으로 여유줄때 사용 */
			.padding {
				padding: 30px;
			}

			/* 포인트 줄때 사용 */
			b {
				background-color: rgba(244, 165, 96, 0.596);
				display: inline;
				border-radius: 10px;
			}

			.point{
				text-align: center;
				background-color: rgba(189, 160, 185, 0.39);;
			}
		</style>

	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

		<!-- Wrapper -->
		<div id="wrapper">
			<span class="span1">
				<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
				<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
			</span>

			<!-- 맨위로 버튼 누를때 이동해올 곳 -->
			<h1 id="top"></h1>

			<!-- Header -->
			<header id="header">
				<h1> 수면 관련 Tip</h1>
				<br>
				<br>
			</header>

			<table class="menu">
				<tr>
					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">맞춤 피드백</a></td>
					<td><a href="doctortip.jsp">수면 관련 Tip</a></td>
					<td><a href="doctorcheck.jsp">수면상태체크</a></td>
				</tr>
			</table>

			<!-- 내용 -->
			<section>
				<div id="main">
					<h3 class="minititle">수면에 좋은 생활습관</h3>
					<ol class="padding">

						<li>카페인이 함유된 음료는 피하기</li>
						<li>너무 배고프거나 배부른 상태로 잠들지 않기</li>
						<li>항상 일정한 시간에 일어나기</li>
						<li>규칙적인 운동하기</li>
						<li>취침 전 과도한 수분 섭취 피하기</li>
						<li>적절한 높이의 베게를 선택하기</li>
					</ol>
					<hr>
					<h3 class="minititle"> 스트레스 완화 호흡법</h3>
					<div>
						<br>
						<center><a href="https://www.youtube.com/watch?v=qkDjMJkLxIo"> <img
									src="./img_doctor/호흡법이미지.PNG" alt=""></a> </center>
						<br>
						<br>

						<table style="color: gray;">

							<tr>
								<td colspan="2">편안한 자세로 앉아준 후 한 손은 배위에 다른 손은 가슴에 얹어봅니다. 코로 숨을 들이쉴 때는 배가 나오고 입으로 숨을 내쉴 때는
									배가 들어갑니다. 내쉬는 호흡을 들이쉬는 호흡보다 길게, 충분히 내쉽니다.</td>
							</tr>

							<tr>
								<td class="point">1</td>
								<td>넷을 셀 동안 숨을 들이마신다</td>
							</tr>
							<tr>
								<td class="point">2</td>
								<td>셋을 셀 동안 호흡을 멈춘다</td>
							</tr>
							<tr>
								<td class="point">3</td>
								<td>다섯을 셀 동안 숨을 천천히 내쉰다</td>
							</tr>
							<tr>
								<td class="point">4</td>
								<td>셋을 셀 동안 호흡을 멈춘다</td>
							</tr>
							<tr>
								<td class="point">5</td>
								<td>이 과정을 3번 반복합니다</td>
							</tr>

						</table>
					</div>

					<hr>
					<br>
					<br>
					<br>
					<br>
				</div>

			</section>

			<br>
			<br>
			<h4 id="p2">추가하고 싶은 정보가 있다면 알려주세요</h4>
			<p id="p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
			<br>

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