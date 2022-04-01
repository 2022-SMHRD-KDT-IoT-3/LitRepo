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
		<!-- 차트 js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

			/* 상위 home, 로그아웃 버튼 */
			.topbutton {
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

			.table {
				color: gray;
				text-align: center;
				font-weight: bold;
			}

			/* 오렌지색 강조 */
			b {
				background-color: rgb(236, 174, 119);
				display: inline;
				border-radius: 10px;
			}

			.physical {
				color: gray;
				text-align: center;
			}

			.point {
				text-align: center;
				font-weight: bold;
				background-color: rgb(236, 174, 119);
				border-radius: 7px;
				color: white;
				font-size: 16px;
			}

			.minititle {
				font-size: 20px;
				background-color: whitesmoke;
				text-align: center;
				height: 30px;
				font-weight: 500;
			}

			/* padding으로 여유줄때 사용 */
			.padding {
				padding: 30px;
			}

			/* 마지막 호흡법 넘버 */
			.point2 {
				text-align: center;
				background-color: rgba(235, 221, 232, 0.548);
			}

			#survey {
				margin: auto;
				text-align: center;
			}
		</style>



	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
		<br>
		<!-- Wrapper -->
		<div id="wrapper">
			<span class="topbutton">
				<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
				<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
			</span>
			<!-- 맨위로 버튼 누를때 이동해올 곳 -->
			<h1 id="top"></h1>

			<!-- Header -->
			<header id="header">
				<h1>맞춤 피드백</h1>
				<br>
				<p>2022.03.01 ~ 2022.03.07</p>
			</header>

			<table class="menu">
				<tr>
					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">맞춤 피드백</a></td>
					<td><a href="doctortip.jsp">의료서비스</a></td>
					<td><a href="doctorcheck.jsp">수면상태체크</a></td>
				</tr>
			</table>

			<div id="main">
				<section id="content" class="main">
					<div class="col-6 col-12-medium">

						<h4 class="Bigtitle">수면 패턴 점수</h4>
						<br>
						<!-- 비교 차트 -->
						<div>
							<canvas id="myChart"></canvas>
						</div>

						<table class="table">
							<tr>
								<td></td>
								<td>수면시간</td>
								<td>심박 일정도</td>
								<td>코골이</td>
								<td>수면환경</td>
								<td>수면의 질</td>
							</tr>
							<tr>
								<td>평균 점수</td>
								<td>75</td>
								<td>70</td>
								<td>65</td>
								<td>70</td>
								<td>65</td>
							</tr>

							<tr>
								<td>나의 점수</td>
								<td>85</td>
								<td>50</td>
								<td>45</td>
								<td>95</td>
								<td>90</td>
							</tr>
						</table>

						<br>
						<p style="text-align: center;"> <b>상위 5%의 수면환경</b> 을 가지셨습니다!</p>
						<p style="text-align: center;">현재 '김도은'님은 사용자 평균에 비해 <u> 매우 좋은 수면환경</u>을 가지고 있습니다. 코골이점수도
							낮으며
							전체적으로 조용한 환경으로 보입니다. 또한 하루 7시간 이상의 수면시간을 가지는 것으로 보아 전체적인 수면 점수가 높게 나올 수 있었습니다.
							<u>일정한 운동</u>으로 심박수 일정도가 유지된다면 더 좋은 수면 점수를 가질 수 있을 것입니다.
						</p>

						<br>
						<hr>
						<h4 class="Bigtitle">운동 추천</h4>
						<br>

						<table class="physical">
							<tr>
								<td colspan="4" style="font-weight: bold;">인터벌 운동</td>
							</tr>

							<tr>
								<td colspan="4">인터벌 운동은 걷고 뛰고를 반복하는 운동으로 심폐지구력 향상에 탁월합니다.
									최대심박수까지 ~하여 ~를 목표로 합니다.</td>
							</tr>

							<tr>
								<td colspan="4" style="background-color: white;">
									<div>
										<center><canvas id="myChart3"></canvas></center>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="4" style="font-weight: bold;">
									<br>
									<h4 style="font-weight: bold;">한달 운동 목표량</h4>
									<br>
									<p><b style="font-weight: bold;">"2주간 1바퀴 증가를</b> 목표로 서서히 늘려갑니다"</p>
									<p>가까운 산책로, 운동장 등으로 처음 5분간 몸을 풀면서 천천히 걷습니다. 이 과정을 통해 몸을 이완시켜줍니다.
										그 후 2분간 천천히 걷기 / 2분간 빠르게 뛰기 / 1분간 천천히 걷기를 반복합니다</p>
								</td>

							</tr>
						</table>


						<table class="table">
							<tr>
								<td colspan="4">저강도 인터벌 트레이닝(홈 트레이닝)</td>
							</tr>

							<tr>
								<td colspan="4"><a href="https://www.youtube.com/watch?v=zNsUXIxwh6U"><img
											src="./img_doctor/인터벌.PNG" alt=""></a></td>
							</tr>

							<tr>
								<td colspan="4">고강도 인터벌 트레이닝(홈 트레이닝)</td>
							</tr>

							<tr>
								<td colspan="4"><a href="https://www.youtube.com/watch?v=LG6CNzlj_6o"><img
											src="./img_doctor/고강도 인터벌.PNG" alt=""></a></td>
							</tr>
						</table>
						<br>
						<h4 class="Bigtitle">운동 별 칼로리 소모량</h4>
						<h5 style="text-align: center;">(60kg/1시간 기준)</h5>

						<table class="physical" style="font-weight: bold;">

							<tr style="background-color: white;">
								<td>
									<img src="./img_doctor/cycling.png" style="width: 100px; height: 100px;" alt="">
								</td>
								<td><img src="./img_doctor/hiking.png" style="width: 100px; height: 100px;" alt=""></td>
							</tr>

							<tr style="background-color: whitesmoke;">
								<td>
									<p class="point">cycling</p>588Kcal
								</td>
								<td>
									<p class="point">hiking</p>588Kcal
								</td>
							</tr>


							<tr style="background-color: white;">
								<td><img src="./img_doctor/runner.png" style="width: 100px; height: 100px;" alt=""></td>
								<td><img src="./img_doctor/swimming.png" style="width: 100px; height: 100px;" alt="">
								</td>
							</tr>

							<tr style="background-color: whitesmoke;">
								<td>
									<p class="point">running</p>735Kcal
								</td>
								<td>
									<p class="point">swimming</p>514Kcal
								</td>
							</tr>
						</table>

						<hr>
						<div id="main">
							<h3 class="minititle">수면에 좋은 생활습관</h3>
							<ol type="a" class="padding">

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
											src="./img_doctor/호흡법이미지.PNG" alt="" width="300px"></a> </center>
								<br>
								<br>

								<table style="color: gray;">

									<tr>
										<td colspan="2" style="background-color: white;">편안한 자세로 앉아준 후 한 손은 배위에 다른 손은
											가슴에 얹어봅니다. 코로 숨을 들이쉴 때는 배가 나오고 입으로
											숨을 내쉴 때는
											배가 들어갑니다. 내쉬는 호흡을 들이쉬는 호흡보다 길게, 충분히 내쉽니다.</td>
									</tr>

									<tr>
										<td class="point2">1</td>
										<td>넷을 셀 동안 숨을 들이마신다</td>
									</tr>
									<tr>
										<td class="point2">2</td>
										<td>셋을 셀 동안 호흡을 멈춘다</td>
									</tr>
									<tr>
										<td class="point2">3</td>
										<td>다섯을 셀 동안 숨을 천천히 내쉰다</td>
									</tr>
									<tr>
										<td class="point2">4</td>
										<td>셋을 셀 동안 호흡을 멈춘다</td>
									</tr>
									<tr>
										<td class="point2">5</td>
										<td>이 과정을 3번 반복합니다</td>
									</tr>

								</table>
							</div>
							<br>
							<p style="text-align: center;">기상 후, 취침 전 한번씩 동영상을 보고 따라해주세요</p>

						</div>
						<br>
					</div>
			</div>
			<br>
			<br>
			<br>
			<!-- 설문조사 -->
			<section>
				<h2 id="survey">서비스 만족도 조사</h2>
				<h5 id="survey">참여하신 분들 중 추첨하여 기프티콘을 보내드립니다</h5>
				<br>
				<form method="post" action="#">
					<div class="row gtr-uniform">
						<div class="col-6 col-12-xsmall">
							<input type="text" name="demo-name" id="demo-name" value="" placeholder="Name" />
						</div>
						<div class="col-6 col-12-xsmall">
							<input type="text" name="demo-email" id="demo-email" value="" placeholder="Phone" />
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="verygood" name="demo-priority" checked>
							<label for="verygood">매우 만족</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="good" name="demo-priority">
							<label for="good">만족</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="normal" name="demo-priority">
							<label for="normal">보통</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="bad" name="demo-priority">
							<label for="bad">불만족</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="verybad" name="demo-priority">
							<label for="verybad">매우 불만족</label>
						</div>

						<div class="col-12">
							<textarea name="demo-message" id="demo-message" placeholder="하시고 싶은 말씀이 있으시다면 남겨주세요"
								rows="5"></textarea>
						</div>
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="Send Message" class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>
			</section>



		</div>
		</div>
		</section>





		<br>
		<br>
		<br>
		<h4 style="text-align: center;">"피드백 관련 문의사항이 있으시면 연락주세요"</h4>
		<p style="text-align:center;">010-0000-0000</p>
		<p style="text-align:center;">언제나 친절히 상담해드리겠습니다</p>
		<br>

		</section>


		</div>
		<br>
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

		<!-- 비교 차트 -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'radar',
				data: {
					labels: ['수면 시간', '심박수 일정도', '코골이', '수면 환경', '수면의 질'],
					datasets: [{
						label: '김도은님의 수면패턴',
						data: [85, 50, 45, 95, 90],
						backgroundColor: [
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)',
							'rgba(255, 99, 132, 0.2)'

						],
						borderColor: [
							'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)',
							'rgba(250, 99, 132, 1)'

						],
						borderWidth: 1

					}, {
						// 평균 수면패턴 추가부분!
						label: '평균 수면패턴',
						data: [75, 70, 65, 70, 65],
						backgroundColor: [
							'rgba(78, 56, 245, 0.2)',
							'rgba(78, 56, 245, 0.2)',
							'rgba(78, 56, 245, 0.2)',
							'rgba(78, 56, 245, 0.2)',
							'rgba(78, 56, 245, 0.2)'

						],
						borderColor: [
							'rgba(78, 56, 245, 1)',
							'rgba(78, 56, 245, 1)',
							'rgba(78, 56, 245, 1)',
							'rgba(78, 56, 245, 1)',
							'rgba(78, 56, 245, 1)'

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

		<script>
			const ctx1 = document.getElementById('myChart3').getContext('2d');
			const myChar3 = new Chart(ctx1, {
				type: 'bar',
				data: {
					labels: ['~3/12', '~3/17', '~3/22', '~3/27', '~4/1', '~4/6'],
					datasets: [{
						label: '뛰는 횟수',
						data: [4, 4, 5, 5, 6, 7, 0],
						backgroundColor: [


							'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)',
							'rgba(255, 99, 12, 0.2)'


						],
						borderColor: [
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)',
							'rgba(250, 99, 12, 1)'

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





	</body>

	</html>