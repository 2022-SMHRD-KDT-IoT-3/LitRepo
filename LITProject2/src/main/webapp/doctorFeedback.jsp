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
	
}

#txt{
	text-align: center;
	margin: auto;
	background-color:antiquewhite;
	border-radius: 10px;
}
.span1 {
				right: 10px;
	top: 10px;
	position: absolute;
}
#header{
    padding-top:40px;
}

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



	</head>
	<body class="is-preload">
	
		<!-- Wrapper -->
			<div id="wrapper">

				<span class="span1">
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'">HOME</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'">로그아웃</button>
		
				
		
				</span>
				<!-- Header -->
					<header id="header">
						<h1>수면 건강 피드백</h1>
						<p>현재 도도동님의 수면 상태에 대한 피드백입니다</p>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">

								<!-- 현재 날짜, 닉네임 값 -->
									<section>
										<h4 id="survey"> <strong>2022.03.01~2022.03.07</strong>
											 기간동안의 수면 데이터 입니다</h4>
										
									</section>

								<!-- 피드백 페이지 -->
									<section>
										<br><br>
										<div class="row">
											<div class="col-6 col-12-medium">
												<h4 id = "history"><strong>히스토리</strong></h4>
												<br>
												<h5 id="txt">평균심박수</h5>
												<br>									
												<div>
													<canvas id="myChart"></canvas>
												  </div>
												<canvas id="myChart" width="400" height="80"></canvas>
			
												<br>
												<h5 id ="txt">평균 데시벨</h5>
												<br>
												<div>
													<canvas id="myChart2"></canvas>
												  </div>
												<canvas id="myChart2" width="400" height="80"></canvas>

												
		
												<br>
												<h5 id ="txt">평균 온/습도</h5>
												 <br>
												<div>
													<canvas id="myChart3"></canvas>
												  </div>
												<canvas id="myChart3" width="400" height="80"></canvas>

												<br>
												<div>
													<canvas id="myChart4"></canvas>
												  </div>
												<canvas id="myChart4" width="400" height="80"></canvas>



												<br><br><br>
												<h4 id ="history"> 분석 결과</h4>
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
												<h3 id ="history"><strong>의사 피드백</strong></h3>
												<br>


												<h4 id="txt"><b>종합 소견</b></h4>
												<br>
												
												<p>현재 도도동 님의 평균 심박 수는 72으로 26살 여성 기준 <u>정상 수치</u>입니다.
													그러나 현재 전체 심박 수 히스토리 분석 결과 자는 동안 급격히 심박 수가 튀는 경우가 보입니다
												자연스러운 현상이기도 하지만 이 수치가 많은 것으로 보아 스트레스를 받거나 잠에서 뒤척이는
											경우가 많을 것으로 예상됩니다. 또한 최소 심박  수와 최대 심박수의 차이가 많이 나기 때문에 이 부분에 유의하셔야 할 것 같습니다.
										<u>걱정될 정도의 수치는 보이지 않습니다.</u> 그래도 건강한 심장을 위해 심폐 지구력을 키우는 유산소 운동을 추천해드립니다
									한 달 정도는 수치를 재면서 자보면서 심박 수 히스토리를 체크하세요												</p>



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
												<h3 id ="history">수면에 좋은 생활습관</h3>
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

								
									<br><br><br>	
								<section>


									<table>
										<tr id = "survey"><td>
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
type: 'line',
data: {
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
    