<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE HTML>
<style>

/* 글 가운데 정렬 용도, 여기저기 쓰임 */
#survey{
	margin: auto;
	text-align: center;
}

#history{
	background-color: lightgrey;
	text-align: center;
	font-size: 20px;
	border-radius: 10px;
	
}

#txt{
	text-align: center;
	margin: auto;
	background-color:antiquewhite;
	border-radius: 10px;
}
/* 비디오 */
video { max-width: 80%; display: block; margin: 20px auto; }

</style>
<html>
	<head>
		<title>doctorFeedback</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- 차트 js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

		<!-- 폰트 -->
		<style>
		@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
	</style>

	</head>
	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"">
	
		<!-- Wrapper -->
		<div id="wrapper">
			
			<!-- Header -->
			<header id="header">
				<h1>수면 건강 피드백</h1>
				<p>현재 도도동님의 수면 상태에 따른 피드백입니다</p>
			</header>
			
			<nav id="nav">
				<ul>
					<li><a href="doctor main.jsp">Main</a></li>
					<li><a href="doctormine.jsp">맞춤 피드백</a></li>
					<li><a href="doctortip.jsp">수면 관련 팁</a></li>
					<li><a href="doctorcheck.jsp">수면상태체크 </a></li>
				</ul>
			</nav>
					

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">

								<!-- 현재 날짜, 닉네임 값 -->
									<section>
										<h4 id="survey"> <strong>2022.03.01~2022.03.07</strong>
											 기간동안의 수면 데이터를 바탕으로 맞춤 컨텐츠를 추천합니다</h4>
									</section>

								<!-- 피드백 페이지 -->
									<section>
										
										<div class="row">
											<div class="col-6 col-12-medium">
												<br>
												<br>
												<h4 id ="history">수면 패턴 점수</h4>
												<br>

												<div>
													<canvas id="myChart"></canvas>                                                    
												  </div>
	
												  <br><br><br>
												  <h4 id ="history" >운동 추천</h4>
												  <br>

												<table>
													<tr align="center">
														<td style="font-weight: bold;">인터벌 운동</td>
													</tr>
													<tr>
														<td>인터벌 운동은 걷고 뛰고를 반복하는 운동으로 심폐지구력 향상에 탁월합니다.
															기본적으로 격한 운동을 했을때의 최대심박수까지 가는 것을 목표로 합니다.</td>
													</tr>

													<tr align="center">
														<td style="font-weight: bold;">저강도 인터벌 트레이닝(홈트레이닝)</td>
													</tr>

													<tr align="center">
														<td><a href="https://www.youtube.com/watch?v=zNsUXIxwh6U"><img src="./img잡다한것/인터벌.PNG" alt=""></a></td>
													</tr>
													<tr align="center">
														<td style="font-weight: bold;">고강도 인터벌 트레이닝(홈트레이닝)</td>
													</tr>

													<tr align="center">
														<td><a href="https://www.youtube.com/watch?v=LG6CNzlj_6o"><img src="./img잡다한것/고강도 인터벌.PNG" alt=""></a></td>
													</tr>

												</table>

												<br>
												<h3 id ="history"><b>스트레스 완화 호흡법</b></h3>
												<br>
													

												
												<br>
												
												<p>운동을 하면 이런 그래프 형태로 증가 가능하다. 그러면 이렇게 된다는 데이터 보여주기</p>

									
											</div>
											
											<div class="col-6 col-12-medium">
												<br><br>
												<h3 id ="history">수면에 좋은 제품 추천</h3>
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
												</section>
											</div>
										</div>	
									</section>

								
									<br><br><br>	
								<section>


									<table>
										<tr id = "survey" style="font-weight: bold;"><td>
											제휴 병원 및 의료진
										</td></tr>
									
									</table>



									<table>
										<tr>
											<td>광주 북구 병원</td>
											<td>광주 서구 병원</td>
											<td>광주 동구 병원</td>
											<td>광주 남구 병원</td>
										</tr>

									</table>

									<table>
										<tr>
											<td>나심장 의사</td>
											<td>김병원 의사</td>
											<td>김간호 의사</td>
											<td>안아파 의사</td>
										</tr>
									</table>
								</section>	



								<br><br><br><br>
								<!-- 설문조사 -->
									<section>
										<h2 id="survey" >서비스 만족도 조사</h2>
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
													<textarea name="demo-message" id="demo-message" placeholder="하시고 싶은 말씀이 있으시다면 남겨주세요" rows="5"></textarea>
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
type: 'radar',
data: {
labels: ['수면 시간', '심박수 일정도', '코골이', '수면 환경', '수면의 질'],
datasets: [{
	label: '도도동님의 수면패턴',
	data: [80, 60, 30, 95, 80],
	backgroundColor: [
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		
	],
	borderColor: [
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		
	],
	borderWidth: 1

}, { 
    // 평균 수면패턴 추가부분!
    label: '평균 수면패턴',
	data: [85, 50, 45, 95, 95],
	backgroundColor: [
		'rgba(78, 56, 245, 0.2)',
		'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
		
	],
	borderColor: [
        'rgba(78, 56, 245, 1)',
		'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
		
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
				'3/1','3/2','3/3','3/4','3/5','3/6','3/7'
			],
			datasets: [
				{ //데이터
					label: '하루 평균 수면 데시벨', //차트 제목
					fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
					data: [
						40,42,38,39,35,41,40 //x축 label에 대응되는 데이터 값
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
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
            



</body>
</html>
    