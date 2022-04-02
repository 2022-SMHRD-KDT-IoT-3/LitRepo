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

			#question {
				background-color: rgba(207, 170, 211, 0.452);
			}

			#num {
				text-align: center;
				background-color: rgba(161, 137, 165, 0.397);
			}

			#num2 {
				text-align: center;
				font-weight: bold;
				font-size: 19px;
			}

			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}

			#id1 {
				padding-top: 90px;
			}
		</style>

	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
		<br>
		<!-- Wrapper -->
		<div id="wrapper">
			<span class="span1">
				<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
				<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
			</span>
			<!-- 맨위로 버튼 누를때 이동해올 곳 -->
			<h1 id="top"></h1>

			<!-- Header -->
			<header id="header">
				<h1 id="id1">수면 상태 체크</h1>
				<br>
				<br>
			</header>


			<table class="menu">
				<tr>
					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">맞춤 피드백</a></td>
					<td><a href="doctortip.jsp">의료서비스</a></td>
					<td><a href="doctorcheck.jsp">수면상태체크</a></td>
				</tr>
			</table>



			<!-- Content -->
			<section id="content" class="main">

				<!-- Main -->
				<div>
					<form>
						<table>
							<form action="">
								<tr>
									<td colspan="5">
										<h4 style="text-align: center;">지난 한달 동안, 당신은 아래의 이유로 잠자는 데 얼마나 자주 문제가 있었습니까?
										</h4>
									</td>
								</tr>

								<tr id="question">
									<td></td>
									<td><b>없다</b></td>
									<td><b>주 1회 미만</b></td>
									<td><b>주 1~2회</b></td>
									<td><b>주 3회 이상</b></td>
								</tr>
								<tr>
									<td id="num">1</td>
									<td colspan="4">
										취침 후 30분 이내에 잠 들 수 없었다
									</td>
								</tr>
								<tr>
									<td id="num">2</td>
									<td colspan="4">
										한밤중이나 새벽에 깼다
									</td>
								</tr>
								<tr>
									<td id="num">3</td>
									<td colspan="4">
										화장실에 가려고 일어나야 했다
									</td>
								</tr>
								<tr>
									<td id="num">4</td>
									<td colspan="4">
										편안하게 숨 쉴 수가 없었다
									</td>
								</tr>
								<tr>
									<td id="num">5</td>
									<td colspan="4">
										기침을 하거나 시끄럽게 코를 골았다
									</td>
								</tr>
								<tr>
									<td id="num">6</td>
									<td colspan="4">
										너무 춥다고 느껴졌다
									</td>
								</tr>
								<tr>
									<td id="num">7</td>
									<td colspan="4">
										너무 덥다고 느껴졌다
									</td>
								</tr>
								<tr>
									<td id="num">8</td>
									<td colspan="4">
										나쁜 꿈을 꾸었다
									</td>
								</tr>
								<tr>
									<td id="num">9</td>
									<td colspan="4">
										잠들기 위해 얼마나 자주 약을 복용했습니까?
									</td>
								</tr>
								<tr>
									<td id="num">10</td>
									<td colspan="4">
										사회활동을 하는 동안 자주 졸음을 느꼈습니까?
									</td>
								</tr>
								<tr>
									<td id="num">11</td>
									<td colspan="4">
										당신이 일에 집중하는데 문제가 있었나요?
									</td>
								</tr>



						</table>
					</form>

					<br>
					<div style="background-color: rgba(219, 170, 208, 0.26);">
						<br>
						<br>
						<h2 style="text-align: center;">결과 해석란</h2>
						<hr>
						<div id="num2">없다 : 0점</div><br>
						<div id="num2">주 1회 미만 : 1점</div><br>
						<div id="num2">주 1~2회 : 2점</div><br>
						<div id="num2">주 3회 이상 : 3점</div><br>

						<br>
						<table>
							<tr>
								<td id="num">
									0 ~ 7점
								</td>

								<td align="center">정상 상태입니다</td>

							<tr>
								<td id="num">
									8 ~ 13점
								</td>
								<td align="center">숙면을 취하지 못하는 상태로 무언가에 의해 수면의 질과 양이 방해받고 있습니다</td>
							</tr>

							<tr>
								<td id="num">14 ~ 24점</td>
								<td align="center">수면장애로 장기화된다면 일상생활에 지장을 받을 수 있습니다</td>
							</tr>

							<tr>
								<td id="num">25점 이상</td>
								<td align="center">적극적인 치료가 필요합니다</td>
							</tr>
						</table>
						<br>



					</div>
					<br><br>
				</div>
				<p style="text-align: center;">"수면의 질을 평가할 수 있는 한국판 피처버그 수면검사의 일부문항을 가져왔습니다.
					자세한 상담과 결과는 병원을 통해서 검사할 수 있습니다"
				</p>
				<br>
				<br>
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