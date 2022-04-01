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

		<!-- 차트 js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">

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

			.Bigtitle {
				text-align: center;
				font-weight: bold;
				font-size: 25px;
			}

			.minititle {
				font-size: 20px;
				text-align: center;
				height: 30px;
				font-weight: 500;
				letter-spacing: 0.5px;
				background-color: antiquewhite;
			}


			b {
				background-color: rgba(244, 165, 96, 0.596);
				display: inline;
				border-radius: 5px;
				font-weight: bold;
			}

			/* 결과 피드백 부분 */
			.feedback {
				padding: 50px;
			}

			.defaultfont {
				text-align: center;
			}

			.imgheart {
				display: inline;
				height: 220px;
				margin: auto;
			}

			.gotop {
				margin-left: 15px;
			}

			.magic {
				-webkit-animation-name: magic;
				animation-name: magic;
			}

			.howto {
				background-color: white;
				color: gray;
			}

			/* 나심장의사 이미지 */
			.imgfile {
				float: left;
				height: 120px;
				margin-right: 10px;
			}

			.doctortable {
				color: gray;
				text-align: center;
				background-color: rgb(255, 255, 255);
			}
		</style>



	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
		<br>
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
			<!-- jjh 여기부터 수정 -->
			<header id="header">
				<h1>수면 결과 분석</h1>
				<br>
				<p>2022.03.01 ~ 2022.03.07</p>
			</header>

			<br>
			<table class="menu">
				<tr>

					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">맞춤 피드백</a></td>
					<td><a href="doctortip.jsp">의사 상담</a></td>
					<td><a href="doctorcheck.jsp">수면상태체크</a></td>
				</tr>
			</table>


			<div id="main">
				<section>
					<div class="row">
						<div class="col-6 col-12-medium">
							<br> <br>
							<h4 class="Bigtitle">히스토리</h4>
							<hr>
							<h5 class="minititle">평균심박수</h5>
							<br>
							<div>
								<canvas id="myChart"></canvas>
							</div>
							<br>
							<div class="defaultfont">
								최소 <b>68bpm</b>, 최대 <b>77bpm</b>
							</div>

							<br>
							<hr>
							<h5 class="minititle">평균 데시벨</h5>
							<br>
							<div>
								<canvas id="myChart2"></canvas>
							</div>
							<br>
							<div class="defaultfont">
								최소 <b>35dB</b>, 최대 <b>42dB</b>
							</div>



							<br>
							<hr>
							<h5 class="minititle">평균 온/습도</h5>
							<br>

							<DIV>
								<div>
									<canvas id="myChart3"></canvas>
								</div>
								<br>
								<div class="defaultfont">
									최소 <b>17도</b>, 최대 <b>23도</b>
								</div>
								<br> <br>
								<div>
									<canvas id="myChart4"></canvas>
								</div>
								<br>
								<div class="defaultfont">
									최소 <b>30%</b>, 최대 <b>35%</b>
								</div>

							</DIV>

							<hr>
							<div style="text-align: center;">
								<br>
								<h4 class="Bigtitle">분석결과</h4>
								<br>
								<div>
									<u>'김도은'</u> 님의 수면 심박수 : <b>60 ~ 72 bpm</b>
								</div>
								<div></div>
								<br>
								<div>
									<u>'김도은'</u> 님의 수면 데시벨 : <b>35 ~ 40 dB</b>
								</div>
								<br>
								<div>
									실내 온/습도 레벨 : <b>적정</b>
								</div>

								<br>
								<hr>
								<br>
								<h3 class="Bigtitle">의사 피드백</h3>
								<br>


								<h4 class="minititle">종합 소견</h4>

								<div class="feedback">
									<p>
										현재 '김도은' 님의 평균 심박 수는 <b>72</b> 로 26살 여성 기준 <u>정상 수치</u>입니다. 그러나
										현재 전체 심박 수 히스토리 분석 결과 자는 동안의 심박 수 향상 수치가 보입니다. 자연스러운 현상이기도 하지만
										이 증가세가 잦은 것으로 보아 스트레스를 받거나 잠에서 뒤척이는 경우가 많을 것으로 예상됩니다. 또한 최소 심박
										수와 최대 심박수의 차이가 많이 나기 때문에 이 부분에 유의하셔야 할 것 같습니다. <u>걱정될 정도의
											수치 이상은 보이지 않습니다.</u> 그래도 건강한 심장을 위해 심폐 지구력을 키우는 <b>유산소 운동</b>을
										추천해드립니다 한 달 정도는 수치를 재면서 심박 수 히스토리를 체크하세요
									</p>
								</div>

								<div style="text-align: center;">휴식기 심박수(여성) <center><img class="imgheart"
											src="./img_doctor/심박수.PNG"></center>
								</div>

								<br>
								<br>
								<br>
								<!-- 나심장의사의 조언 -->
								<table  style="font-weight: bold;">
									<tr></tr>
									<tr class="doctortable">
										<td>
											<img class="imgfile" src="./img_doctor/diagnosis.png" alt="">

											<div><b>'나심장' 의사의 조언</b></div><br>

											<div> 1. 유산소 운동 하루 30분 이상 하기</div>
											<div> 2. 한달 간 심박수 수치 측정하기</div>
											<div>3. 현재 온/습도 레벨 유지하기</div>
										</td>
									</tr>
								</table>
								<br>
							</div>
						</div>
					</div>
			</div>
			</section>

			<br> <br> <br> <br>
			<p class="defaultfont" style="font-weight: bold;">"오늘의 분석 결과를 통해
				맞춤 피드백 페이지에 필요한 정보를 제공해드립니다"</p>



			<br> <br> <br>
			</section>


		</div>

		<button type="button" class="gotop">
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

		<!-- 심박수 차트 -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '하루 평균 수면 심박 수',
						data: [73, 70, 77, 69, 68, 70, 71],
						backgroundColor: ['rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)'

						],
						borderColor: ['rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)', 'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)', 'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)'

						],
						borderWidth: 1
					}]
				},
				options: {
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		</script>

		<!-- 데시벨 차트 -->
		<script type="text/javascript">
			var context = document.getElementById('myChart2').getContext('2d');
			var myChart2 = new Chart(context, {
				type: 'line', // 차트의 형태
				data: { // 차트에 들어갈 데이터
					labels: [
						//x 축
						'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{ //데이터
						label: '하루 평균 수면 데시벨', //차트 제목
						fill: true, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data: [40, 42, 38, 39, 35, 41, 40 //x축 label에 대응되는 데이터 값
						],
						backgroundColor: [
							//색상

							'rgba(25, 190, 124,0.2)'

						],
						borderColor: [
							//경계선 색상
							'rgba(25, 159, 64, 1)'

						],
						borderWidth: 1
						//경계선 굵기
					}]
				},
				options: {
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		</script>

		<!-- 온습도 차트 -->

		<script>
			const ctx1 = document.getElementById('myChart3').getContext('2d');
			const myChar3 = new Chart(ctx1, {
				type: 'bar',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '하루 평균 실내 온도',
						data: [20, 21, 23, 20, 18, 17, 20, 5],
						backgroundColor: ['rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)', 'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)', 'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)', 'rgba(255, 99, 12, 0.2)'

						],
						borderColor: ['rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)', 'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)', 'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)', 'rgba(250, 99, 12, 1)'

						],
						borderWidth: 1
					}]
				},
				options: {
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		</script>






		<!-- 평균 실내 습도 -->
		<script>
			const ctx2 = document.getElementById('myChart4').getContext('2d');
			const myChar4 = new Chart(ctx2, {
				type: 'bar',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '하루 평균 실내 습도',
						data: [30, 31, 33, 34, 35, 33, 33, 10],
						backgroundColor: [

							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(75, 192, 192, 0.2)'

						],
						borderColor: ['rgba(0,0,255,1)', 'rgba(0,0,255,2)',
							'rgba(0,0,255,2)', 'rgba(0,0,255,2)',
							'rgba(0,0,255,2)', 'rgba(0,0,255,2)',
							'rgba(0,0,255,2)', 'rgba(0,0,255,2)'

						],
						borderWidth: 1
					}]
				},
				options: {
					scales: {
						y: {
							beginAtZero: true
						}
					}
				}
			});
		</script>



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