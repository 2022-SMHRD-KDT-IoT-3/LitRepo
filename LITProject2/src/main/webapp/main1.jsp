<%@page import="model.MemberDTO"%>
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

<style>
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

#wrapper {
	margin-top: 60px;
}
</style>


</head>
<body class="is-preload">


	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 로그인 버튼 -->

			<span class="span1">
			<button type="button" class="btn btn-outline-secondary" onclick="location.href='join.jsp'">회원가입</button>
			<button type="button" class="btn btn-outline-secondary" onclick="location.href='login.jsp'">로그인</button>
			

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
								<h2>회사소개</h2>
							</header>
							<p>오늘밤은 또 어떻게 잘 수 있을까? 라는 작은 생각들이 모여 lit이란 회사가 결성되었습니다. 사용자의
								숙면을 위해 수면등에 다양한 기능을 제공하고 있습니다. 또한 웹을 통해 수면 패턴 히스토리를 확인할 수 있고
								전문가의 피드백을 제공합니다.</p>

						</div>

					</div>
				</section>

				<!-- First Section(제품소개)-->
				<section id="first" class="main special">
					<header class="major">
						<h2>제품 소개</h2>
						<br>
					</header>
					<ul class="features">

						<table>
							<tr>

								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="80" height="80" fill="currentColor"
										class="bi bi-lightbulb" viewBox="0 0 16 16">
											<path
											d="M2 6a6 6 0 1 1 10.174 4.31c-.203.196-.359.4-.453.619l-.762 1.769A.5.5 0 0 1 10.5 13a.5.5 0 0 1 0 1 .5.5 0 0 1 0 1l-.224.447a1 1 0 0 1-.894.553H6.618a1 1 0 0 1-.894-.553L5.5 15a.5.5 0 0 1 0-1 .5.5 0 0 1 0-1 .5.5 0 0 1-.46-.302l-.761-1.77a1.964 1.964 0 0 0-.453-.618A5.984 5.984 0 0 1 2 6zm6-5a5 5 0 0 0-3.479 8.592c.263.254.514.564.676.941L5.83 12h4.342l.632-1.467c.162-.377.413-.687.676-.941A5 5 0 0 0 8 1z" />
										  </svg>
									<h3>무드등 기능</h3>
									<p>맞춤 색 설정이 가능하며 상황에 따른 맞춤 색을 추천합니다. 카테고리는 공부, 독서, 파티 등
										6가지로 분류되어 있습니다</p></td>
							</tr>

							<tr>
								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="75" height="75" fill="currentColor"
										class="bi bi-heart-pulse-fill" viewBox="0 0 16 16">
													<path fill-rule="evenodd"
											d="M1.475 9C2.702 10.84 4.779 12.871 8 15c3.221-2.129 5.298-4.16 6.525-6H12a.5.5 0 0 1-.464-.314l-1.457-3.642-1.598 5.593a.5.5 0 0 1-.945.049L5.889 6.568l-1.473 2.21A.5.5 0 0 1 4 9H1.475ZM.879 8C-2.426 1.68 4.41-2 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C11.59-2 18.426 1.68 15.12 8h-2.783l-1.874-4.686a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.88Z" />
												  </svg> <br>
									<h3>수면 히스토리 기록</h3>
									<p>사용자의 수면시 심박수, 데시벨을 측정하고 그래프 형태로 보여줍니다. 또한 수면시 온/습도 등을
										측정하여 사용자가 현재 환경을 확인할 수 있습니다.</p></td>
							</tr>

							<tr>
								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="70" height="70" fill="currentColor"
										class="bi bi-file-earmark-bar-graph" viewBox="0 0 16 16">
													<path
											d="M10 13.5a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-6a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v6zm-2.5.5a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1zm-3 0a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-1z" />
													<path
											d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
												  </svg> <br>
									<h3>피드백 서비스</h3>
									<p>7일간의 사용자 데이터를 취합하여 분석합니다. 수면 패턴 결과에 이상이 있으면 전문가 상담을
										연결해드립니다. 취합된 결과는 정기적으로 이메일로 받을 수 있습니다.</p></td>
							</tr>
						</table>
				</section>


				<!-- Second Section(피드백 과정) -->
				<section id="second" class="main special">
					<header class="major">
						<h2>피드백 과정</h2>
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
						<h2>서비스를 이용하고 싶으시다면 아래의 번호로 연락해주세요</h2>
						<p>
							무드등 렌탈에 관련되어 언제나 친절히 상담해드리겠습니다<br /> 당신의 건강한 수면을 위해 노력합니다
						</p>
						phone : 010-0000-0000 <br> email : doeun1327@naver.com <br>
					</header>
					<br>
					
				</section>

			</div>

			<!-- Footer -->
			<footer id="footer">
				
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