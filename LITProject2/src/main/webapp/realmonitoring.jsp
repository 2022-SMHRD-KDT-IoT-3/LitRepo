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

<!-- 제이쿼리 선언 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- 차트 js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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

/* 환자 메뉴 탭 css */
ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	padding: 15px 0;
	border-top: 3px solid #eee;
}

.tab-content.current {
	display: inherit;
}

/* 환자 피드백 보내기 섹션 */
.feedbacksend {
	text-align: center;
	font-size: 17px;
	padding: 40px
}

b {
	background-color: rgba(250, 128, 114, 0.377);
	color: white;
	font-weight: bold;
	border-radius: 5px;
}

label {
	font-weight: bold;
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<div id="wrapper">
		<span class="span1">
			<button type="button" onclick="location.href='main_login.jsp'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span> <br> <br> <br> <br>
		<header id="header">
			<h1>환자 모니터링</h1>
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

		<br>
		<!-- 컨텐츠 시작  부분 -->
		<div id="main">

			<!-- 환자 메뉴 탭 -->
			<div class="container">

				<ul class="tabs" style="text-align: center;">
					<li class="tab-link current" data-tab="tab-1">환자 1</li>
					<li class="tab-link" data-tab="tab-2">환자 2</li>
					<li class="tab-link" data-tab="tab-3">환자 3</li>
				</ul>

				<!-- 환자 1 내용 -->
				<div id="tab-1" class="tab-content current">

					<div>
						<canvas id="myChart"></canvas>
					</div>
					<hr>
					<table style="text-align: center;">
						<tr>
							<td>수면의 질</td>
							<td>수면 시간</td>
							<td>수면 환경</td>
							<td>코골이</td>
							<td>심박수 일정도</td>
						</tr>

						<tr>
							<td>80</td>
							<td>80</td>
							<td>90</td>
							<td>85</td>
							<td>56</td>
						</tr>

						<tr>
							<td colspan="5">현재 심박수 일정도가 평균에 비해 떨어집니다 <br> 수면 환경은 매우
								좋고, 평균 수면시간은 <b>7</b>시간입니다.
							</td>
						</tr>
					</table>

					<br>
					<section class="feedbacksend">
						<h3>
							<b>김도은</b> 환자에게 보내는 피드백
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="제목을 입력해주세요">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">피드백
								내용</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">전송</button>
					</center>

					<br>
					<br>
					<br>
					<br>

				</div>
				<!-- 환자 2 내용 -->

				<div id="tab-2" class="tab-content">

					<div>
						<canvas id="myChart2"></canvas>
					</div>

					<hr>

					<table style="text-align: center;">
						<tr>
							<td>소음</td>
							<td>3/1</td>
							<td>3/2</td>
							<td>3/3</td>
							<td>3/4</td>
							<td>3/5</td>
							<td>3/6</td>
							<td>3/7</td>
						</tr>

						<tr>
							<td></td>
							<td>52</td>
							<td>50</td>
							<td>49</td>
							<td>58</td>
							<td>65</td>
							<td>60</td>
							<td>60</td>
						</tr>

						<tr>
							<td></td>
							<td colspan="8">현재 코골이 지수가 평균데시벨인 40을 넘어 <b>60</b>을 유지중입니다
							</td>
						</tr>

					</table>

					<br>

					<section class="feedbacksend">
						<h3>
							<b>김도은</b> 환자에게 보내는 피드백
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="제목을 입력해주세요">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">피드백
								내용</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">전송</button>
					</center>

					<br>
					<br>
					<br>
					<br>
				</div>

				<!-- 환자 3 내용 -->

				<div id="tab-3" class="tab-content">
					<div>
						<canvas id="myChart3"></canvas>
					</div>
					<hr>
					<table style="text-align: center;">
						<tr>
							<td>실내온도</td>
							<td>20</td>
							<td>21</td>
							<td>25</td>
							<td>24</td>
							<td>26</td>
							<td>28</td>
						</tr>

						<tr>
							<td colspan="7">현재 매우 안정적인 실내온도를 유지하고 있습니다</td>
						</tr>
					</table>


					<br>
					<section class="feedbacksend">
						<h3>
							<b>김도은</b> 환자에게 보내는 피드백
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="제목을 입력해주세요">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">피드백
								내용</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">전송</button>
					</center>

					<br>
					<br>
					<br>
					<br>
				</div>

			</div>
		</div>
		<br> <br> <br> <br>





		<!-- 환자메뉴 탭 js -->
		<script>
			$(document).ready(function() {

				$('ul.tabs li').click(function() {
					var tab_id = $(this).attr('data-tab');

					$('ul.tabs li').removeClass('current');
					$('.tab-content').removeClass('current');

					$(this).addClass('current');
					$("#" + tab_id).addClass('current');
				})

			})

			Resources
		</script>




		<!-- 환자1 차트 -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {

				type : 'radar',

				data : {

					labels : [ '수면 시간', '심박수 일정도', '코골이', '수면 환경', '수면의 질' ],

					datasets : [
							{

								label : '전체 수면 점수',

								data : [ 80, 50, 90, 95, 80, ],

								backgroundColor : [

								'rgba(255, 99, 132, 0.2)',
										'rgba(255, 99, 132, 0.2)',
										'rgba(255, 99, 132, 0.2)',
										'rgba(255, 99, 132, 0.2)',
										'rgba(255, 99, 132, 0.2)',
										'rgba(255, 99, 132, 0.2)'

								],
								borderColor : [ 'rgba(250, 99, 132, 1)',
										'rgba(250, 99, 132, 1)',
										'rgba(250, 99, 132, 1)',
										'rgba(250, 99, 132, 1)',
										'rgba(250, 99, 132, 1)',
										'rgba(250, 99, 132, 1)'

								],
								borderWidth : 1
							},
							{
								// 평균 수면패턴 추가부분!
								label : '평균 수면패턴',
								data : [ 75, 70, 65, 70, 65 ],
								backgroundColor : [ 'rgba(78, 56, 245, 0.2)',
										'rgba(78, 56, 245, 0.2)',
										'rgba(78, 56, 245, 0.2)',
										'rgba(78, 56, 245, 0.2)',
										'rgba(78, 56, 245, 0.2)'

								],
								borderColor : [ 'rgba(78, 56, 245, 1)',
										'rgba(78, 56, 245, 1)',
										'rgba(78, 56, 245, 1)',
										'rgba(78, 56, 245, 1)',
										'rgba(78, 56, 245, 1)'

								],
								borderWidth : 1
							} ]
				},

				options : {
					scales : {
						y : {
							beginAtZero : true
						}
					}
				}
			});
		</script>

		<!-- 환자 2 차트 -->
		<script type="text/javascript">
			var context = document.getElementById('myChart2').getContext('2d');
			var myChart2 = new Chart(context, {
				type : 'bar', // 차트의 형태
				data : { // 차트에 들어갈 데이터
					labels : [
					//x 축
					'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7', ],
					datasets : [ { //데이터
						label : '하루 평균 수면 데시벨', //차트 제목
						fill : true, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data : [ 60, 52, 50, 49, 58, 65, 60, 0 //x축 label에 대응되는 데이터 값
						],
						backgroundColor : [
						//색상

						'rgba(25, 190, 124,0.2)', 'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)'

						],
						borderColor : [
						//경계선 색상
						'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)'

						],
						borderWidth : 1
					//경계선 굵기
					} ]
				},
				options : {
					scales : {
						y : {
							beginAtZero : true
						}
					}
				}
			});
		</script>

		<!-- 환자3 차트 -->

		<script>
			const ctx1 = document.getElementById('myChart3').getContext('2d');
			const myChar3 = new Chart(ctx1,
					{
						type : 'bar',
						data : {
							labels : [ '3/1', '3/2', '3/3', '3/4', '3/5',
									'3/6', '3/7' ],
							datasets : [ {
								label : '하루 평균 실내 온도',
								data : [ 20, 21, 23, 20, 18, 17, 20, 5 ],
								backgroundColor : [ 'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)',
										'rgba(255, 99, 12, 0.2)'

								],
								borderColor : [ 'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)',
										'rgba(250, 99, 12, 1)'

								],
								borderWidth : 1
							} ]
						},
						options : {
							scales : {
								y : {
									beginAtZero : true
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