<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
	<title>recommand</title>
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


		#img {
			width: 20px;
			height: 20px;
		}

		/* 글 가운데 정렬 용도, 여기저기 쓰임 */
		#survey {
			margin: auto;
			text-align: center;
		}


		/* 라벨태그 */
		#history {
			font-size: 25px;
			font-weight: bold;
			margin: auto;
			text-align: center;
			color: rgb(248, 244, 244);
		}


		#txt {
			text-align: center;
			margin: auto;
			background-color: antiquewhite;
			border-radius: 10px;
		}

		#bt {
			text-align: center;
			margin-left: 20px;
			margin-right: 20px;
		}
	</style>



</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<br>
	<button type="button" onclick="" class="btn btn-outline-secondary" style="margin-left: 10px;">HOME</button>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<!-- jjh 여기부터 수정 -->
		<header id="header">
            <h1>수면 결과 분석</h1>
            <p>현재 도도동님의 수면 상태에 따른 결과분석 입니다</p>
        </header>
        
        <nav id="nav">
            <ul>
                <li><a href="doctor main.jsp">Main</a></li>
                <li><a href="doctormine.jsp">맞춤 피드백</a></li>
                <li><a href="doctortip.jsp">수면 관련 팁</a></li>
                <li><a href="doctorcheck.jsp">수면상태체크 </a></li>
            </ul>
        </nav>	
		
					<div id="main">

					
						<section id="content" class="main">

							<h4><b>2022.03.01부터 2022.03.10까지의 측정데이터입니다</b></h4>

			            </section>

			                <!-- 피드백 페이지 -->
			                <!-- jjh 여기 까지 수정 -->
			            <section>
				
				       <div class="row">
				          	<div class="col-6 col-12-medium">
						<h4 id="history"><strong>히스토리</strong></h4>
						<br>
						<h5 id="txt">평균심박수</h5>
						<br>
						<div>
							<canvas id="myChart"></canvas>
						</div>
						<canvas id="myChart" width="400" height="80"></canvas>

						<br>
						<h5 id="txt">평균 데시벨</h5>
						<br>
						<div>
							<canvas id="myChart2"></canvas>
						</div>
						<canvas id="myChart2" width="400" height="80"></canvas>



						<br>
						<h5 id="txt">평균 온/습도</h5>
						<br>
						<div>

						</div>
						<DIV>
							<div>
								<canvas id="myChart3"></canvas>
							</div>

							<div>
								<canvas id="myChart4"></canvas>
							</div>

						</DIV>
						<div>
							<br>
							<h4 id="history">분석결과</h4>
							<br>
							<ul>
								<li>현재 나이의 휴식기 평균 심박수는 69~72입니다 </li>
								<br>
								<h4><strong>현재 도도동님의 평균심박수는 72로 정상범위이지만
										평균에서 평균 이하로 갈 가능성이 높습니다
										적절한 운동이 필요합니다</strong></h4>

								<br>
								<br>
								<li>데시벨 측정 결과 평균 35으로 일상생활시 소음정도로 측정됩니다 </li>
								<br>
								<h4><strong>조용한 주택의 거실의 데시벨이 40정도입니다.
										현재 코골이 이외의 특정한 소음이 없기 때문에 현재의 소음 환경은
										좋다고 평가할 수 있습니다.</strong></h4>

								<br>

							</ul>
							<h3 id="history"><b>의사 피드백</b></h3>
							<br>


							<h4 id="txt"><b>종합 소견</b></h4>
							<br>

							<p>현재 도도동 님의 평균 심박 수는 72으로 26살 여성 기준 <u>정상 수치</u>입니다.
								그러나 현재 전체 심박 수 히스토리 분석 결과 자는 동안 급격히 심박 수가 튀는 경우가 보입니다
								자연스러운 현상이기도 하지만 이 수치가 많은 것으로 보아 스트레스를 받거나 잠에서 뒤척이는
								경우가 많을 것으로 예상됩니다. 또한 최소 심박 수와 최대 심박수의 차이가 많이 나기 때문에 이 부분에 유의하셔야 할 것 같습니다.
								<u>걱정될 정도의 수치는 보이지 않습니다.</u> 그래도 건강한 심장을 위해 심폐 지구력을 키우는 유산소 운동을 추천해드립니다
								한 달 정도는 수치를 재면서 자보면서 심박 수 히스토리를 체크하세요
							</p>



							<br>
							<h4 id="txt"><strong>'나심장' 의사의 조언</strong></h4>
							<br>

							<ul class="alt" id="survey">
								<li>자기전 핸드폰 만지지 않기</li>
								<li>하루 30분 이상 유산소 운동하기</li>
								<li>한달동안 심박수 히스토리 확인해보기</li>
							</ul>
						</div>

						<div class="col-6 col-12-medium">
							<br><br>
							<h3 id="history">수면에 좋은 생활습관</h3>
							<ol>
								<b>
									<li>카페인이 함유된 음료는 피하기</li>
									<li>너무 배고프거나 배부른 상태로 잠들지 않기</li>
									<li>항상 일정한 시간에 일어나기</li>
									<li>규칙적인 운동하기</li>
									<li>취침 전 과도한 수분 섭취 피하기</li>
									<li>적절한 높이의 베게를 선택하기</li>
								</b>
							</ol>

						</div>
					</div>
				</div>
	</div>
	</section>





	<br>
	<br>
	<h4 style="text-align: center;">추가하고 싶은 카테고리가 있다면 알려주세요</h4>
	<p style="text-align:center;">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
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
					backgroundColor: [
						'rgba(255, 99, 132, 0.2)',
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
						'rgba(250, 99, 132, 1)',
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
		var context = document
			.getElementById('myChart2')
			.getContext('2d');
		var myChart2 = new Chart(context, {
			type: 'bar', // 차트의 형태
			data: { // 차트에 들어갈 데이터
				labels: [
					//x 축
					'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'
				],
				datasets: [
					{ //데이터
						label: '하루 평균 수면 데시벨', //차트 제목
						fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data: [
							40, 42, 38, 39, 35, 41, 40 //x축 label에 대응되는 데이터 값
						],
						backgroundColor: [
							//색상

							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)'

						],
						borderColor: [
							//경계선 색상
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)'
						],
						borderWidth: 1 //경계선 굵기
					}/* ,
			{
				label: 'test2',
				fill: false,
				data: [
					8, 34, 12, 24
				],
				backgroundColor: 'rgb(157, 109, 12)',
				borderColor: 'rgb(157, 109, 12)'
			} */
				]
			},
			options: {
				scales: {
					yAxes: [
						{
							ticks: {
								beginAtZero: true
							}
						}
					]
				}
			}
		});
	</script>

	<!-- 온습도 차트 -->

	<script>
		const ctx1 = document.getElementById('myChart3').getContext('2d');
		const myChar3 = new Chart(ctx1, {
			type: 'line',
			data: {
				labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
				datasets: [{
					label: '하루 평균 실내 온도',
					data: [20, 21, 23, 20, 18, 17, 20],
					backgroundColor: [
						'rgba(255, 99, 12, 0.2)',
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






	<!-- 평균 실내 습도 -->
	<script>
		const ctx2 = document.getElementById('myChart4').getContext('2d');
		const myChar4 = new Chart(ctx2, {
			type: 'line',
			data: {
				labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
				datasets: [{
					label: '하루 평균 실내 습도',
					data: [20, 21, 23, 20, 18, 17, 20],
					backgroundColor: [

						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(75, 192, 192, 0.2)'


					],
					borderColor: [
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)',
						'rgba(0,0,255,2)'


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