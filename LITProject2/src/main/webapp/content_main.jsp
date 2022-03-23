<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE HTML>

<html>
	<head>
		<title>recommand</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	
	<style>

		#p1{
			margin: auto;
			text-align: center;
			font-weight: bold;
			font-size: 17px;
			color: rgba(15, 15, 15, 0.705);
		}

		#p2{
			margin: auto;
			text-align: center;
		}

		#tr2{
			margin-top: 10pxs;
		}

		#minit1{
			background-color :rgba(253, 253, 252, 0.767);
			border-radius: 40px;
		}

		
		#gotop{
			left: 10px;
			bottom: -50px;
			position: relative;
		}


	</style>

	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				
				<!-- 맨위로 버튼 누를때 이동해올 곳 -->
				<h1 id ="top"></h1>
				
				<!-- Header -->
					<header id="header">
						<h1 id="id1">JUST FOR YOU</h1>
						<br>
						<p>숙면에 도움을 줄 수 있는 제품과 콘텐츠를 추천해드립니다</p>
					</header>


						<!-- Content -->
							<section id="content" class="main">
						
								<table>
									<tr>
										<td id="minit1">
											<b></b><p id ="p1">향기</p></b>
											<br>
											<span class="image main"><img src="./img_content/candle-g337478058_640.jpg" /></span>
										</td>
										</tr>

										<!-- 빈칸용도 -->
										<tr>
											<td><br></td>
										</tr>
										
									
										<tr>
										<td id="minit1">
											<br>
											<b><p id ="p1">명상 컨텐츠</p></b>
											<br>
											<span class="image main"><img src="./img_content/meditate-g48de601c2_640.jpg" alt="" /></span>
											</tr>
										
										<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
											<br>
											<b><p id ="p1">ASMR</p></b>
											<br>
											<span class="image main"><img src="./img_content/headphones-g4003b1c7c_640.jpg" alt="" /></span>
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
												<br>
												<b><p id ="p1">리빙 제품</p></b>
												<br>	
												<span class="image main"><img src="./img_content/chair-gb88916802_640.jpg" alt="" /></span>
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
												<td id="minit1">
													<br>
												<b><p id ="p1">차</p></b>
												<br>
												<span class="image main"><img src="./img_content/tea-g85980191f_640.jpg" alt="" /></span>
												</tr>

									<!-- 전체 테이블 영역 마지막 -->
									</tr>
								</table>



								<br>
								<br>
								<h4 id = "p2">추가하고 싶은 컨텐츠가 있다면 알려주세요</h4>
								<p id = "p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
								<br>
							
							</section>

							
						</div>

							<button type="button" id = "gotop"><a href="#top">맨 위로</a></button>
						
						
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