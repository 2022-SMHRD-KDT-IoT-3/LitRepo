<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<!-- 웹페이지 이름 -->
<title>lit!</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>
<scrip src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0">
</script>

<style>
.span1 {
	right: 10px;
	position: absolute;
	top: 10px;
}

#wrapper {
	margin-top: 60px;
}

#history {
	color: white;
	background-color: #ebe7f1;
	display: inline;
	border-radius: 10px;
}

#history2 {
	color: black;
	font-weight: bold;
}
</style>
</head>




<body class="is-preload">


	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 로그인 버튼 -->

		<span class="span1">
			<button type="button" class="btn btn-secondary">마이페이지</button>
			<button type="button" class="btn btn-outline-secondary">로그아웃</button>

		</span>


		<!-- Header(제일 위에 보여지는 화면) -->
		<header id="header" class="alt">
			<h1>Dream Catcher</h1>
			<p>
				당신의 불면증을 가져갑니다<br />


				<!-- Main -->
			<div id="main">

				<!-- Introduction(회사소개)-->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>프로필</h2>
							</header>
							<p>사용자 프로필 나올곳</p>

						</div>

					</div>
				</section>

				<!-- First Section(히스토리확인)-->
				<section id="first" class="main special">
					<header class="major">
						<h2>히스토리 확인</h2>
						<br>
					</header>
					<ul class="features">
						<li><br>
							<h2 id="history">심박수</h2> <br> 실시간 차트 기록, DB연결 예정 <!-- 실시간 데이터 들어가야함 -->
							<br></li>
						<br>

						<li><br>
							<h2 id="history">데시벨</h2> <br> 실시간 데시벨 기록 <!-- 실시간 데이터 들어가야함 -->
							<br></li>

						<li><br>
							<h2 id="history">온/습도</h2> <br> <!-- 실시간 데이터 들어가야함, 그 부분은 더 연구해야할듯 -->
							<br> <svg xmlns="http://www.w3.org/2000/svg" width="50"
								height="50" fill="currentColor" class="bi bi-thermometer-half"
								viewBox="0 0 16 16">
											<path
									d="M9.5 12.5a1.5 1.5 0 1 1-2-1.415V6.5a.5.5 0 0 1 1 0v4.585a1.5 1.5 0 0 1 1 1.415z" />
											<path
									d="M5.5 2.5a2.5 2.5 0 0 1 5 0v7.55a3.5 3.5 0 1 1-5 0V2.5zM8 1a1.5 1.5 0 0 0-1.5 1.5v7.987l-.167.15a2.5 2.5 0 1 0 3.333 0l-.166-.15V2.5A1.5 1.5 0 0 0 8 1z" />
										  </svg>
							<h2 id="history2">12도</h2> <br> <svg
								xmlns="http://www.w3.org/2000/svg" width="50" height="50"
								fill="currentColor" class="bi bi-cloud-drizzle"
								viewBox="0 0 16 16">
											<path
									d="M4.158 12.025a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm6 0a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm-3.5 1.5a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm6 0a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 1 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm.747-8.498a5.001 5.001 0 0 0-9.499-1.004A3.5 3.5 0 1 0 3.5 11H13a3 3 0 0 0 .405-5.973zM8.5 2a4 4 0 0 1 3.976 3.555.5.5 0 0 0 .5.445H13a2 2 0 0 1 0 4H3.5a2.5 2.5 0 1 1 .605-4.926.5.5 0 0 0 .596-.329A4.002 4.002 0 0 1 8.5 2z" />
										  </svg>
							<h2 id="history2">40%</h2>
							</p></li>
					</ul>

				</section>

				<!-- Second Section(사용메뉴얼) -->
				<section id="second" class="main special">
					<header class="major">
						<h2>사용 메뉴얼</h2>
						<p>전문가의 의견과 논문을 종합하여 사용자의 숙면에 도움이 되는 맞춤 피드백을 제공합니다.</p>
					</header>
					<ul class="statistics">
						<li class="style1">
							<h3>(1)</h3> 웹 페이지 회원가입 및 제품 확인
						</li>
						<li class="style2">
							<h3>(2)</h3>안정된 상태에서 5~10분간 심박수 측정<br> 평균 심박데이터를 측정합니다
						</li>
						<li class="style3">
							<h3>(3)</h3>5일동안 사용자의 심박, 코골이 데이터를 취합합니다<br> 그 후 수면 데이터를
							그래프화하여 그래프를 분석합니다

						</li>
						<li class="style4">
							<h3>(4)</h3>분석된 그래프는 전문가의 의견, 논문을 바탕으로 해석합니다<br> 이상 징후 발견 시
							사용자는 전문가 상담 서비스를 받을 수 있습니다
						</li>
						<li class="style5">
							<h3>(5)</h3>측정데이터는 사용자의 이메일로 정기적으로 발송됩니다<br> 사용자는 웹을 통해 수면관련
							컨텐츠를 제공받습니다

						</li>
					</ul>
				</section>

				<!-- Get Started -->
				<section id="cta" class="main special">
					<header class="major">
						<h2>서비스를 관련된 문의사항이 있다면 아래의 번호로 연락해주세요</h2>
						<p>
							언제나 친절히 상담해드리겠습니다<br /> 당신의 건강한 수면을 위해 노력합니다
						</p>
						phone : 010-0000-0000 <br> email : doeun1327@naver.com <br>
					</header>
					<br>

				</section>

			</div>

			<!-- Footer -->
			<footer id="footer">
				<section>

					<p>
						<br>불편사항이 있다면 연락 언제든 연락해주세요 <br>언제나 고객님의 피드백을 기다리고 있습니다
					</p>
					phone : 010-0000-0000 <br> email : jung@naver.com <br>

				</section>
				<section>
					<h2>회사 정보</h2>
					<dl class="alt">
						<dt>Address</dt>
						<dd>광주 동구 예술길</dd>
						<dt>Phone</dt>
						<dd>(000) 000-0000 x 0000</dd>
						<dt>Email</dt>
						<dd>
							<a href="#">information@untitled.tld</a>
						</dd>
					</dl>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter alt"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f alt"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram alt"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github alt"><span
								class="label">GitHub</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble alt"><span
								class="label">Dribbble</span></a></li>
					</ul>
				</section>

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