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


			.btn-outline-secondary {
				/*위에 홈 로그인버튼*/
				background-color: transparent !important;
				box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%) !important;
				color: #ffffff !important;
				border-radius: 8px !important;
				border-color: rgb(255 255 255 / 35%) !important;
				padding-right: 10px !important;
				width: 80px !important;
				font-size: 12px !important;
			}


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

			p {
				font-weight: bold;
				background-color: whitesmoke;
				border-radius: 7px;
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
				border-color: white;
				border-radius: 10px;
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
				margin: 20px;
			}

			.doctortable {
				color: gray;
				text-align: center;
				background-color: rgb(255, 255, 255);
			}

			/*  심박수 바 그래프 */
			.pulse1 {
				padding: 50px;
			}

			.pulse2 {
				text-align: center;
				font-weight: bold;
			}

			a {
				color: #FFFFFFA6 !important;
				text-decoration: none !important;
			}

			.mylevel {
				margin-left: 120px;
				position: absolute;
			}

			.lastword {
				text-align: center;
				color: white;
			}

		</style>


		<!-- 부트스트랩 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
		<br>
		<!-- Wrapper -->
		<div id="wrapper">
			<span class="span1">
				<button type="button"  onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
					id="up">HOME</button>

				<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
					id="up">로그아웃</button>
			</span>
			<!-- 맨위로 버튼 누를때 이동해올 곳 -->
			<h1 id="top"></h1>

			<!-- Header -->
			<!-- jjh 여기부터 수정 -->
			<header id="header">
				<h1>수면 결과 분석</h1>
				<br>
				<div style="color: white;">2022.03.01 ~ 2022.03.07</div>
			</header>

			<br>
			<table class="menu" style="color: inherit;">

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

							<!-- 심박수 시작 -->
							<hr>
							<h5 class="minititle">평균심박수</h5>
							<!-- 직관적 이미지 추가 십박수 그래프 -->
							<div class="pulse1">
								<div class="progress">

									<div class="progress-bar bg-danger" role="progressbar" style="width: 20%"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"> 위험</div>
									<div class="progress-bar bg-success" role="progressbar" style="width: 40%"
										aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">적정</div>
									<div class="progress-bar bg-info" role="progressbar" style="width: 20%"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">좋음</div>
									<div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="15"
										aria-valuemin="0" aria-valuemax="100"> 매우 좋음</div>
								</div>
								<div class="mylevel"> ▲</div>

							</div>
							<br>
							<div class="pulse2">
								현재 '정정용' 님의 심박수는 <b>적정 수치</b>입니다
							</div>

							<details class="pulse1">
								<summary>
									<p style="text-align: center;">일주일 평균 심박수 보기</p>
									<br>
								</summary>

								<canvas id="myChart"></canvas>
								<br>
								<br>
								<div class="defaultfont">
									최소 <b>68bpm</b>, 최대 <b>77bpm</b>
								</div>
							</details>

							<!-- 데시벨 시작 -->
							<hr>
							<h5 class="minititle">평균 데시벨</h5>
							<br>

							<!-- 직관적 이미지 추가 데시벨 그래프 -->
							<div class="pulse1">
								<div class="progress">
									<div class="progress-bar progress-bar-striped progress-bar-animated"
										role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"
										style="width: 75%"></div>
								</div>
							</div>

							<div class="pulse2">
								현재 '정정용' 님의 데시벨 레벨은 <b>매우 좋음</b> 입니다
							</div>


							<details class="pulse1">
								<summary>
									<p style="text-align: center;">일주일 평균 데시벨 보기</p>
									<br>
								</summary>

								<canvas id="myChart2"></canvas>
								<br>
								<br>
								<div class="defaultfont">
									최소 <b>35dB</b>, 최대 <b>42dB</b>
								</div>
							</details>


							<!-- 온습도 시작 -->
							<hr>
							<h5 class="minititle">평균 온/습도</h5>

							<!-- 직관적 이미지 추가 온습도 그래프 -->
							<div class="pulse1">

								<h5 style="text-align: center;">온도 레벨</h5>
								<br>
								<div class="progress">
									<div class="progress-bar" role="progressbar" style="width: 70%;" aria-valuenow="25"
										aria-valuemin="0" aria-valuemax="100">20도</div>
								</div>

								<br>
								<br>
								<br>

								<h5 style="text-align: center;">습도 레벨</h5>
								<br>
								<div class="progress">
									<div class="progress-bar" role="progressbar" style="width: 55%;" aria-valuenow="25"
										aria-valuemin="0" aria-valuemax="100">55%</div>
								</div>

							</div>
							<br>
							<div class="pulse2">
								현재 '정정용' 님의 수면환경은 <b>매우 좋음</b> 입니다
							</div>


							<details class="pulse1">
								<summary>
									<p style="text-align: center;">일주일 평균 온/습도 보기</p>
									<br>
								</summary>

								<canvas id="myChart3"></canvas>
								<br>
								<br>
								<div class="defaultfont">
									최소 <b>17도</b>, 최대 <b>23도</b>
								</div>
								<br>
								<hr>
								<div>
									<canvas id="myChart4"></canvas>
								</div>
								<br>
								<br>
								<div class="defaultfont">
									최소 <b>30%</b>, 최대 <b>35%</b>
								</div>
							</details>


							<!-- 분석결과  summary -->
							<hr>
							<div style="text-align: center;">
								<br>
								<h4 class="Bigtitle">  분석결과 </h4>
								<br>
								<div>
									수면 심박수 : <b>60 ~ 72 bpm</b>
								</div>
								<div></div>
								<br>
								<div>
									수면 데시벨 : <b>35 ~ 40 dB</b>
								</div>
								<br>
								<div>
									실내 온/습도 레벨 : <b>매우 좋음</b>
								</div>

								<br>
								<br>
								<hr>
								<br>
								<h3 class="Bigtitle"> 의사 피드백 </h3>
								
								<div class="feedback">
									<p>
										현재 '정정용' 님의 평균 심박 수는 <b>72</b> 로 26살 여성 기준 <u>정상 수치</u>입니다. 그러나
										현재 전체 심박 수 히스토리 분석 결과 자는 동안의 심박 수 향상 수치가 보입니다. 자연스러운 현상이기도 하지만
										이 증가세가 잦은 것으로 보아 스트레스를 받거나 잠에서 뒤척이는 경우가 많을 것으로 예상됩니다. 또한 최소 심박
										수와 최대 심박수의 차이가 많이 나기 때문에 이 부분에 유의하셔야 할 것 같습니다. <u>걱정될 정도의
											수치 이상은 보이지 않습니다.</u> 그래도 건강한 심장을 위해 심폐 지구력을 키우는 <b>유산소 운동</b>을
										추천해드립니다 한 달 정도는 수치를 재면서 심박 수 히스토리를 체크하세요
									</p>
								</div>

								<div style="text-align: center;">휴식기 심박수(남성) <center><img class="imgheart"
											src="./img_doctor/심박수.PNG"></center>
								</div>

								<br>
								<br>
								<br>
								<!-- 나심장의사의 조언 -->
								<table style="font-weight: bold;">
									<tr></tr>
									<tr class="doctortable">
										<td>
											<br>
											<img class="imgfile" src="./img_doctor/consultation.png" alt="">
											<div><b>'나심장' 의사의 조언</b></div><br>

											<div> 1. 하루 30분 이상 유산소 운동하기</div>
											<div> 2. 한달 간 심박수 수치 측정하기</div>
											<div>3. 현재 온/습도 레벨 유지하기</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
			</div>
			</section>

			<br> <br>
			<br> <br>
			<div class="lastword">"오늘의 분석 결과를 통해
				맞춤 피드백 페이지에 필요한 정보를 제공해드립니다"</div>

				<br><br><br>
			</section>
		</div>

		<br>
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

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	</body>

	</html>