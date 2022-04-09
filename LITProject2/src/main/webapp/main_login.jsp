<%@page import="model.EnvironmentDTO"%>
<%@page import="model.EnvironmentDAO"%>
<%@page import="model.RealtimeDAO"%>
<%@page import="model.RealtimeDTO"%>
<%@page import="model.PhysicalDTO"%>
<%@page import="java.util.List"%>
<%@page import="service.BodyCalculator"%>
<%@page import="model.PhysicalDAO"%>
<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>

<head>
	<!-- 웹페이지 이름 -->
	<title>DreamCatcher</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
	<scrip src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0">
		</script>

		<!-- 차트 js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
			@import url('https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap');

			.span1 {
				right: 10px;
				position: absolute;
				top: 10px;
			}

			#wrapper {
				margin-top: 60px;
			}

			/* 히스토리 라벨 */
			#history {
				color: white;
				background-color: #ebe7f1;
				text-align: center;
				font-size: 20px;
			}

			#history2 {
				color: black;
				font-weight: bold;
			}


			.major {
				margin: auto;
				text-align: center;
			}



			#bt {
				text-align: center;
				margin-left: 20px;
				margin-right: 20px;
			}

			#main {
				border-radius: 15px;
			}

			#txt {
				background-color: rgba(215, 187, 231, 0.315);
				font-size: 24px;
			}

			#txt2 {
				font-size: 35px;
				font-weight: bold;
				text-align: center;
				background-color: rgb(253, 253, 253);
			}


			#icon {
				margin-top: 20px;
			}

			#header.alt h1 {
				font-size: 5.5em;
			}

			#nav {
				color: #636363;
				position: absolute;
				width: 54em;
				max-width: calc(100% - 4em);
				padding: 1em;
				background-color: #f7f7f7;
				border-top-left-radius: 0.25em;
				border-top-right-radius: 0.25em;
				cursor: default;
				text-align: center;

			}

			#logo {
				padding-bottom: 50px;
			}
			#box{
			margin-bottom:140px;
			}
			
			.row>div{
				align : center;
			}
		</style>
</head>




<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>

<% 
// 세션 생성
HttpSession session1=request.getSession(); 
MemberDTO dto= (MemberDTO) session1.getAttribute("info"); 

//dao/dto 생성
PhysicalDAO pdao = new PhysicalDAO();
RealtimeDAO rdao = new RealtimeDAO();
EnvironmentDAO edao = new EnvironmentDAO();
EnvironmentDTO edto = edao.SelectTempHumi(dto.getMem_id());


//그래프 데이터값을 생성하는 인스턴스 BodyCalculator
BodyCalculator bc = new BodyCalculator();

List<PhysicalDTO> BPMavgList = null;
List<RealtimeDTO> SoundavgList = null;


String BPMlabels = "";
String BPMdata = "";
String Soundlabels = "";
String SoundData = "";
int temperature = 0;
int humidity = 0;



if(edto != null){
temperature = edto.getEnv_temp();
humidity = edto.getEnv_humid();
}

int bpmListSize = pdao.SelectBPMPerHour(dto.getMem_id()).size(); // 시간당 bpm 가져오기
	
	if( bpmListSize != 0){
	BPMavgList = pdao.SelectBPMPerHour(dto.getMem_id());
	BPMlabels = bc.chart1Labels(BPMavgList);
	
	BPMdata = bc.chart1Data(BPMavgList);
	} 
	
int SoundListSize = rdao.selectdecibelPerHour(dto.getMem_id()).size(); // 시간당 데시벨 가져오기

	if(SoundListSize != 0){
		SoundavgList = rdao.selectdecibelPerHour(dto.getMem_id());
		
		Soundlabels = bc.chart2Labels(SoundavgList);
		SoundData = bc.chart2Data(SoundavgList);
		
		
	}


	




	

		
%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 로그인 버튼 -->

<!-- admin 아이디 로그인 시 관리자 페이지 버튼 추가  -->
		<span class="span1">
			<% if(dto != null){%>
                           <!-- 아이디가 admin이면 회원 전체 검색이 되도록 -->
                           <%if(dto.getMem_id().equals("admin")){ %>
                           <button type="button" onclick="location.href='select.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">회원전체검색</button> 		
		
			<button type="button" onclick="location.href='mypage.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>

			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
                           <%}else{ %>
                          <button type="button" onclick="location.href='mypage.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>

			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
                           <%} %>
                           <%} %>
		</span>
		<br><br><br>

		<!-- Header(제일 위에 보여지는 화면) -->
		<header id="header" class="alt">
			<div id="logo">
				<h1 style="font-family: 'Tangerine', cursive;">Dream Catcher</h1>
				<p>당신의 불면증을 가져갑니다<br />
			</div>
			<br>
			<div id="box">
			<!-- 메뉴 영역 -->
			<table id="category">
				<tr align="center">
					<td>
						<a id="bt" href="colorchange.jsp">색상</a>
						<a id="bt" href="content_main.jsp">컨텐츠 추천</a>
						<a id="bt" href="doctor main.jsp">의사피드백</a>
						<a id="bt" href="Board.jsp">게시판</a>
						<a id="bt" href="content_situation.jsp">상황별 조명</a>
						<a id="bt" href="speaker.jsp">음악</a>
						
					</td>
				</tr>
			</table>
		</div>





			<!-- Main : 흰색 배경 있는 부분 -->
			<div id="main">

				<!-- Introduction(회사소개)-->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>프로필</h2>
							</header>
							<p><svg xmlns="http://www.w3.org/2000/svg" width="70" height="70" fill="currentColor"
									class="bi bi-person-square" viewBox="0 0 16 16">
									<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
									<path
										d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z" />
								</svg>
								<br>
							</p>
							<p><%= dto.getMem_nick() %></p>


						</div>

					</div>
				</section>

				<!-- First Section(히스토리확인)-->
				<section id="first" class="main special">
					<header class="major">
						<h2>히스토리 확인</h2>
						<br>
						<section>
							<div class="row">
								<div class="col-6 col-12-medium">
									<h5 id="txt">평균심박수</h5>
									<br>
									<%if(bpmListSize != 0) {%>
									<div>
										
										<canvas id="myChart"></canvas>
										
									</div>
									
									
									<!--  
									<canvas id="myChart" width="400" height="80"></canvas>
									-->
									<%} else { %>
										<h5>축적된 데이터가 없습니다.</h5>
										<%} %>

									<br>
									<h5 id="txt">평균 데시벨</h5>
									<br>
									<%if(SoundListSize != 0){ %>
									<div >
									
										<canvas id="myChart2"></canvas>
									</div>
									<%} else { %>
										<h5>축적된 데이터가 없습니다.</h5>
									<%} %>
									
								</div>
							</div>

							<br>
							<h5 id="txt">온/습도</h5>
							<br>

							<table>


								<tr>
									<td><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
											fill="currentColor" class="bi bi-thermometer-half" viewBox="0 0 16 16">
											<path
												d="M9.5 12.5a1.5 1.5 0 1 1-2-1.415V6.5a.5.5 0 0 1 1 0v4.585a1.5 1.5 0 0 1 1 1.415z" />
											<path
												d="M5.5 2.5a2.5 2.5 0 0 1 5 0v7.55a3.5 3.5 0 1 1-5 0V2.5zM8 1a1.5 1.5 0 0 0-1.5 1.5v7.987l-.167.15a2.5 2.5 0 1 0 3.333 0l-.166-.15V2.5A1.5 1.5 0 0 0 8 1z" />
										</svg></td>
										
									<td id="txt"><%= temperature %>도</td>
									
								</tr>

								<tr>
									<td><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40"
											fill="currentColor" class="bi bi-cloud-drizzle" viewBox="0 0 16 16">
											<path
												d="M4.158 12.025a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm6 0a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm-3.5 1.5a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 0 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm6 0a.5.5 0 0 1 .316.633l-.5 1.5a.5.5 0 1 1-.948-.316l.5-1.5a.5.5 0 0 1 .632-.317zm.747-8.498a5.001 5.001 0 0 0-9.499-1.004A3.5 3.5 0 1 0 3.5 11H13a3 3 0 0 0 .405-5.973zM8.5 2a4 4 0 0 1 3.976 3.555.5.5 0 0 0 .5.445H13a2 2 0 0 1 0 4H3.5a2.5 2.5 0 1 1 .605-4.926.5.5 0 0 0 .596-.329A4.002 4.002 0 0 1 8.5 2z" />
										</svg></td>
									<td id="txt"><%= humidity %>%</td>
								</tr>

							</table>
						</section>
						<br><br><br><br>

						<!-- Second Section(피드백과정) -->
						<section id="second" class="main special">
							<header class="major">
								<h2>사용 메뉴얼</h2>
								<p>전문가의 의견과 논문을 종합하여 사용자의 숙면에 도움이 되는 맞춤 피드백을 제공합니다.</p>
							</header>
							<ul class="statistics">
								<li class="style1">
									<h3>(1)</h3>
									웹 페이지 회원가입 및 제품 확인
								</li>
								<li class="style2">
									<h3>(2)</h3>안정된 상태에서 5~10분간 심박수 측정<br>
									평균 심박데이터를 측정합니다
								</li>
								<li class="style3">
									<h3>(3)</h3>7일동안 사용자의 심박, 코골이 데이터를 취합합니다<br>
									그 후 수면 데이터를 그래프화하여 그래프를 분석합니다

								</li>
								<li class="style4">
									<h3>(4)</h3>분석된 그래프는 전문가의 의견, 논문을 바탕으로 해석합니다<br>
									이상 징후 발견 시 사용자는 전문가 상담 서비스를 받을 수 있습니다
								</li>
								<li class="style5">
									<h3>(5)</h3>사용자는 웹을 통해 수면관련 컨텐츠와 개인 맞춤형 피드백 컨텐츠를 제공받습니다<br>
									

								</li>
							</ul>
						</section>

						<!-- Get Started -->
						<section id="cta" class="main special">
							<header class="major">
								<h2>서비스에 관련된 문의사항이 있다면 아래의 번호로 연락해주세요</h2>
								<p>언제나 친절히 상담해드리겠습니다<br />
									당신의 건강한 수면을 위해 노력합니다</p>
								phone : 010-0000-0000 <br>
								email : doeun1327@naver.com
								<br>
							</header>
							<br>

						</section>

			</div>

			<!-- Footer -->
			<footer id="footer">
				<section>

					<p>
						<br>제품 관련 불편사항이 있다면 연락 언제든 연락해주세요
						<br>언제나 고객님의 피드백을 기다리고 있습니다
					</p>
					phone : 010-0000-0000 <br>
					email : jung@naver.com
					<br>

				</section>
				<section>
					<h2>회사 정보</h2>
					<dl class="alt">
						<dt>Address</dt>
						<dd>광주 동구 예술길</dd>
						<dt>Phone</dt>
						<dd>(000) 000-0000 x 0000</dd>
						<dt>Email</dt>
						<dd><a href="#">information@untitled.tld</a></dd>
					</dl>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a>
						</li>
						<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a>
						</li>
						<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a>
						</li>
						<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a>
						</li>
					</ul>
				</section>

			</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


	<!-- mychart : 심박수차트 -->
	<script>
		const ctx = document.getElementById('myChart').getContext('2d');
		const myChart = new Chart(ctx, {
			type: 'line',
			data: {
				labels: [<%= BPMlabels %>],
				datasets: [{
					label: '오늘의 수면 평균 심박수',
					data: [<%= BPMdata %>],
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


	<!-- mychart2 : 데시벨 차트 -->
	<script type="text/javascript">
		var context = document
			.getElementById('myChart2')
			.getContext('2d');
		var myChart2 = new Chart(context, {
			type: 'bar', // 차트의 형태
			data: { // 차트에 들어갈 데이터
				labels: [
					//x 축
					<%= Soundlabels %>
				],
				datasets: [
					{ //데이터
						label: '오늘의 수면 데시벨', //차트 제목
						fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
						data: [
							<%= SoundData %> //x축 label에 대응되는 데이터 값
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






	</body>

</html>