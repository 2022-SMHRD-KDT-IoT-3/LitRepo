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
			@import url('https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap');

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
	padding-top: 110px;
}
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>

	<!-- Wrapper -->
	<div id="wrapper">
        <span class="span1">
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">Mypage</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>

        

        </span>
		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">ASMR</h1>
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
							<a href="https://www.youtube.com/watch?v=HrO74lj5QBs"target="_blank"><img src="./img_asmr/asmr비.jpg"
									class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">비</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=KKi2qiuZZWQ"target="_blank"><img src="./img_asmr/asmr바람.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">바람</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
					<div class="card" style="width: 18rem;">
						<a href="https://www.youtube.com/watch?v=6ZSbWQkIYsU"target="_blank"><img src="./img_asmr/asmr장작.jpg" class="card-img-top" width="300px" height="220"></a>
						<div class="card-body">
							<p class="card-text" style="text-align: center">장작</p>
						</div>
					</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=lYJ17n_oUkA"target="_blank"><img src="./img_asmr/asmr숲.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">숲</p>
							</div>
						</div>
					</td>
					
				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=zp789sRyQKg"target="_blank"><img src="./img_asmr/asmr바다.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">바다</p>
							</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=xym-gmq_rlw"target="_blank"><img src="./img_asmr/asmr카페.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">카페</p>
							</div>
						</div>
					</td>
				</tr>



			</table>




			<br>
			<br>
			<h4 id="p2">추가하고 싶은 ASMR 있다면 알려주세요</h4>
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