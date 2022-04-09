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
	<!-- �������� �̸� -->
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

		<!-- ��Ʈ js -->
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

			/* �����丮 �� */
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
// ���� ����
HttpSession session1=request.getSession(); 
MemberDTO dto= (MemberDTO) session1.getAttribute("info"); 

//dao/dto ����
PhysicalDAO pdao = new PhysicalDAO();
RealtimeDAO rdao = new RealtimeDAO();
EnvironmentDAO edao = new EnvironmentDAO();
EnvironmentDTO edto = edao.SelectTempHumi(dto.getMem_id());


//�׷��� �����Ͱ��� �����ϴ� �ν��Ͻ� BodyCalculator
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

int bpmListSize = pdao.SelectBPMPerHour(dto.getMem_id()).size(); // �ð��� bpm ��������
	
	if( bpmListSize != 0){
	BPMavgList = pdao.SelectBPMPerHour(dto.getMem_id());
	BPMlabels = bc.chart1Labels(BPMavgList);
	
	BPMdata = bc.chart1Data(BPMavgList);
	} 
	
int SoundListSize = rdao.selectdecibelPerHour(dto.getMem_id()).size(); // �ð��� ���ú� ��������

	if(SoundListSize != 0){
		SoundavgList = rdao.selectdecibelPerHour(dto.getMem_id());
		
		Soundlabels = bc.chart2Labels(SoundavgList);
		SoundData = bc.chart2Data(SoundavgList);
		
		
	}


	




	

		
%>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- �α��� ��ư -->

<!-- admin ���̵� �α��� �� ������ ������ ��ư �߰�  -->
		<span class="span1">
			<% if(dto != null){%>
                           <!-- ���̵� admin�̸� ȸ�� ��ü �˻��� �ǵ��� -->
                           <%if(dto.getMem_id().equals("admin")){ %>
                           <button type="button" onclick="location.href='select.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">ȸ����ü�˻�</button> 		
		
			<button type="button" onclick="location.href='mypage.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">����������</button>

			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
                           <%}else{ %>
                          <button type="button" onclick="location.href='mypage.jsp' " class="btn btn-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">����������</button>

			<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
                           <%} %>
                           <%} %>
		</span>
		<br><br><br>

		<!-- Header(���� ���� �������� ȭ��) -->
		<header id="header" class="alt">
			<div id="logo">
				<h1 style="font-family: 'Tangerine', cursive;">Dream Catcher</h1>
				<p>����� �Ҹ����� �������ϴ�<br />
			</div>
			<br>
			<div id="box">
			<!-- �޴� ���� -->
			<table id="category">
				<tr align="center">
					<td>
						<a id="bt" href="colorchange.jsp">����</a>
						<a id="bt" href="content_main.jsp">������ ��õ</a>
						<a id="bt" href="doctor main.jsp">�ǻ��ǵ��</a>
						<a id="bt" href="Board.jsp">�Խ���</a>
						<a id="bt" href="content_situation.jsp">��Ȳ�� ����</a>
						<a id="bt" href="speaker.jsp">����</a>
						
					</td>
				</tr>
			</table>
		</div>





			<!-- Main : ��� ��� �ִ� �κ� -->
			<div id="main">

				<!-- Introduction(ȸ��Ұ�)-->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>������</h2>
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

				<!-- First Section(�����丮Ȯ��)-->
				<section id="first" class="main special">
					<header class="major">
						<h2>�����丮 Ȯ��</h2>
						<br>
						<section>
							<div class="row">
								<div class="col-6 col-12-medium">
									<h5 id="txt">��սɹڼ�</h5>
									<br>
									<%if(bpmListSize != 0) {%>
									<div>
										
										<canvas id="myChart"></canvas>
										
									</div>
									
									
									<!--  
									<canvas id="myChart" width="400" height="80"></canvas>
									-->
									<%} else { %>
										<h5>������ �����Ͱ� �����ϴ�.</h5>
										<%} %>

									<br>
									<h5 id="txt">��� ���ú�</h5>
									<br>
									<%if(SoundListSize != 0){ %>
									<div >
									
										<canvas id="myChart2"></canvas>
									</div>
									<%} else { %>
										<h5>������ �����Ͱ� �����ϴ�.</h5>
									<%} %>
									
								</div>
							</div>

							<br>
							<h5 id="txt">��/����</h5>
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
										
									<td id="txt"><%= temperature %>��</td>
									
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

						<!-- Second Section(�ǵ�����) -->
						<section id="second" class="main special">
							<header class="major">
								<h2>��� �޴���</h2>
								<p>�������� �ǰ߰� ���� �����Ͽ� ������� ���鿡 ������ �Ǵ� ���� �ǵ���� �����մϴ�.</p>
							</header>
							<ul class="statistics">
								<li class="style1">
									<h3>(1)</h3>
									�� ������ ȸ������ �� ��ǰ Ȯ��
								</li>
								<li class="style2">
									<h3>(2)</h3>������ ���¿��� 5~10�а� �ɹڼ� ����<br>
									��� �ɹڵ����͸� �����մϴ�
								</li>
								<li class="style3">
									<h3>(3)</h3>7�ϵ��� ������� �ɹ�, �ڰ��� �����͸� �����մϴ�<br>
									�� �� ���� �����͸� �׷���ȭ�Ͽ� �׷����� �м��մϴ�

								</li>
								<li class="style4">
									<h3>(4)</h3>�м��� �׷����� �������� �ǰ�, ���� �������� �ؼ��մϴ�<br>
									�̻� ¡�� �߰� �� ����ڴ� ������ ��� ���񽺸� ���� �� �ֽ��ϴ�
								</li>
								<li class="style5">
									<h3>(5)</h3>����ڴ� ���� ���� ������� �������� ���� ������ �ǵ�� �������� �����޽��ϴ�<br>
									

								</li>
							</ul>
						</section>

						<!-- Get Started -->
						<section id="cta" class="main special">
							<header class="major">
								<h2>���񽺿� ���õ� ���ǻ����� �ִٸ� �Ʒ��� ��ȣ�� �������ּ���</h2>
								<p>������ ģ���� ����ص帮�ڽ��ϴ�<br />
									����� �ǰ��� ������ ���� ����մϴ�</p>
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
						<br>��ǰ ���� ��������� �ִٸ� ���� ������ �������ּ���
						<br>������ ������ �ǵ���� ��ٸ��� �ֽ��ϴ�
					</p>
					phone : 010-0000-0000 <br>
					email : jung@naver.com
					<br>

				</section>
				<section>
					<h2>ȸ�� ����</h2>
					<dl class="alt">
						<dt>Address</dt>
						<dd>���� ���� ������</dd>
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


	<!-- mychart : �ɹڼ���Ʈ -->
	<script>
		const ctx = document.getElementById('myChart').getContext('2d');
		const myChart = new Chart(ctx, {
			type: 'line',
			data: {
				labels: [<%= BPMlabels %>],
				datasets: [{
					label: '������ ���� ��� �ɹڼ�',
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


	<!-- mychart2 : ���ú� ��Ʈ -->
	<script type="text/javascript">
		var context = document
			.getElementById('myChart2')
			.getContext('2d');
		var myChart2 = new Chart(context, {
			type: 'bar', // ��Ʈ�� ����
			data: { // ��Ʈ�� �� ������
				labels: [
					//x ��
					<%= Soundlabels %>
				],
				datasets: [
					{ //������
						label: '������ ���� ���ú�', //��Ʈ ����
						fill: false, // line ������ ��, �� ������ ä����� ��ä�����
						data: [
							<%= SoundData %> //x�� label�� �����Ǵ� ������ ��
						],
						backgroundColor: [
							//����

							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)',
							'rgba(25, 190, 124,0.5)'

						],
						borderColor: [
							//��輱 ����
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)',
							'rgba(25, 159, 64, 1)'
						],
						borderWidth: 1 //��輱 ����
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