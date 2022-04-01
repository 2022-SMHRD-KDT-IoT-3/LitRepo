<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>DreamCatcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<!-- 차트 js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">

<!-- jquery CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- fullcalendar CDN -->
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>



<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

/* 버튼 */
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

/* 메뉴 */
.menu {
	text-align: center;
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<div id="wrapper">
		<span class="span1">
			<button type="button" onclick="location.href='main1.jsp'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span> <br> <br> <br> <br>
		<header id="header">
			<h1>게시판</h1>
			<br>
		</header>

		<br>
		<table class="menu">
			<tr>
				<td><a href="realDoctorMain.jsp">스케줄</a></td>
				<td><a href="realmonitoring.jsp">환자 모니터링</a></td>
				<td><a href="realBoard.jsp">게시판</a></td>
			</tr>
		</table>

		<!-- 컨텐츠 시작  부분 -->
		<div style="padding: 30px;">

			<section>
				<h3></h3>
				<div class="table-wrapper">
					<table style="text-align: center;">
						<thead>
							<tr>
								<form id="category">
									<th><select name="category">
											<option value="A">전체보기</option>
											<option value="F">자유</option>
											<option value="I">정보</option>
											<option value="S">수면</option>
											<option value="Q">질문</option>
									</select></th>
									<th></th>
								</form>
								<th></th>
								<th></th>
								<th></th>
							</tr>

							<tr style="font-weight: bold;">
								<td>글 번호</td>
								<td>글 유형</td>
								<td>제목</td>
								<td>조회수</td>
								<td>작성자</td>
								<td>작성일자</td>
							</tr>

							<tr>
								<td>1</td>
								<td>자유</td>
								<td>세미나 문의</td>
								<td>5</td>
								<td>나심장</td>
								<td>04/01</td>
							</tr>
							<tr>
								<td>2</td>
								<td>질문</td>
								<td>심장 학회 관련 문의</td>
								<td>56</td>
								<td>김튼튼</td>
								<td>04/01</td>
							</tr>
							<tr>
								<td>3</td>
								<td>자유</td>
								<td>상담 문의</td>
								<td>45</td>
								<td>김간호</td>
								<td>04/01</td>
							</tr>

						</thead>

					</table>

					<center>
						<button onclick='location.href="writeBoard.jsp"'>글 쓰기</button>
					</center>
					<br> <br> <br> <br> <br> <br>
				</div>


				<script src="assets/js/jquery.min.js"></script>
				<script type="text/javascript">
					
				</script>
				<script src="assets/js/jquery.scrollex.min.js"></script>
				<script src="assets/js/jquery.scrolly.min.js"></script>
				<script src="assets/js/browser.min.js"></script>
				<script src="assets/js/breakpoints.min.js"></script>
				<script src="assets/js/util.js"></script>
				<script src="assets/js/main.js"></script>
</body>
</html>





</div>
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