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
		<!-- ��Ʈ js -->
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

			/* �� ��� ���� �뵵, �������� ���� */
			#survey {
				margin: auto;
				text-align: center;
			}


			/* ���±� */
			#history {
				background-color: lightgrey;
				text-align: center;
				font-size: 20px;
				border-radius: 10px;
				font-weight: bold;
			}


			#txt {
				text-align: center;
				margin: auto;
				background-color: antiquewhite;
				border-radius: 10px;
				font-weight: bold;
			}

			#bt {
				text-align: center;
				margin-left: 20px;
				margin-right: 20px;
			}

			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}

			#header {
				padding-top: 90px;
			}

			.point {
				background-color: rgba(255, 127, 80, 0.527);
				border-radius: 7px;
				font-weight: bold;

			}

			.bd{
				font-weight: bold;
				font-size: 23px;
				background-color: rgba(255, 127, 80, 0.527);;
				border-radius: 6px;
			}
			
		</style>



	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
		<br>
		<!-- Wrapper -->
		<div id="wrapper">
			<span class="span1">
				<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
				<button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
					style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
			</span>
			<!-- ������ ��ư ������ �̵��ؿ� �� -->
			<h1 id="top"></h1>

			<!-- Header -->
			<!-- jjh ������� ���� -->
			<header id="header">
				<h1>���� ��� �м�</h1>
				<br>
				<p>2022.03.01 ~ 2022.03.07</p>
			</header>

			<nav id="nav" style="display:inline;">
				<ul>
					<li><a href="doctor main.jsp">Main</a></li>
					<li><a href="doctormine.jsp">���� �ǵ��</a></li>
					<li><a href="doctortip.jsp">���� ���� ��</a></li>
					<li><a href="doctorcheck.jsp">�������üũ </a></li>
				</ul>
			</nav>

			<div id="main">


				<section id="content" class="main">

					<br>
					<br>
					<br>

					<div class="row">
						<div class="col-6 col-12-medium">
							<br>
							<br>
							<h4 id="history">���� ���� ����</h4>
							<br>
							<!-- �� ��Ʈ -->
							<div>
								<canvas id="myChart"></canvas>
							</div>

							<table style="color: gray;">
								<tr>
									<td></td>
									<td>����ð�</td>
									<td>�ɹڼ� ������</td>
									<td>�ڰ���</td>
									<td>����ȯ��</td>
									<td>������ ��</td>
								</tr>
								<tr>
									<td>��� ����</td>
									<td>75</td>
									<td>70</td>
									<td>65</td>
									<td>70</td>
									<td>65</td>
								</tr>

								<tr>
									<td>���� ����</td>
									<td>85</td>
									<td>50</td>
									<td>45</td>
									<td>95</td>
									<td>90</td>
								</tr>
							</table>

							<br>
							<p style="text-align: center;"> <b class="point">�����ϴٴ� ���� �������� ��������</b></p>
							<p style="text-align: center;">���� '�赵��'���� ����� ��տ� ���� <u> �ſ� ���� ����ȯ��</u>�� ������ �ֽ��ϴ�. �ڰ���������
								������
								��ü������ ������ ȯ������ ���Դϴ�. ���� �Ϸ� 7�ð� �̻��� ����ð��� ������ ������ ���� ��ü���� ���� ������ ���� ���� �� �־����ϴ�.
								<u>������ �</u>���� �ɹڼ� �������� �����ȴٸ� �� ���� ���� ������ ���� �� ���� ���Դϴ�.
							</p>



							<br><br>
							<h4 id="history">� ��õ</h4>


							<table style="text-align: center;">
								<tr align="center" style="color: gray;">
									<td colspan="4" style="font-weight: bold;">���͹� �</td>
								</tr>
								<tr style="color: gray;">
									<td colspan="4">���͹� ��� �Ȱ� �ٰ� �ݺ��ϴ� ����� ���������� ��� Ź���մϴ�.
										�ִ�ɹڼ����� ~�Ͽ� ~�� ��ǥ�� �մϴ�.</td>
								</tr>

								<tr style="color: gray;">
									<td colspan="4" style="font-weight: bold;">�Ѵ� � ��ǥ��</td>
								</tr>

								<!-- ���͹� ��ǥ�� ��Ʈ -->
								<tr style="color: gray;">
									<td colspan="4">
										<div>
											<canvas id="myChart3"></canvas>
										</div>
										<br>
										<p class="point">2�ְ� 1���� ������ ��ǥ�� ������ �÷����ϴ�</p>
										<p>����� ��å��, ��� ������ ó�� 5�а� ���� Ǯ�鼭 õõ�� �Ƚ��ϴ�. �� ������ ���� ���� �̿Ͻ����ݴϴ�. �� �� 2�а� õõ�� �ȱ�
											- 2�а� ������ �ٱ� - 1�а� õõ�� �ȱ⸦ �ݺ��մϴ�.</p>
									</td>
								</tr>


								<tr align="center" style="color: gray;">
									<td colspan="4" style="font-weight: bold;">������ ���͹� Ʈ���̴�(ȨƮ���̴�)</td>
								</tr>

								<tr align="center" style="color: gray;">
									<td colspan="4"><a href="https://www.youtube.com/watch?v=zNsUXIxwh6U"><img
												src="./img_doctor/���͹�.PNG" alt=""></a></td>
								</tr>

								<br>
								<tr align="center" style="color: gray;">
									<td colspan="4" style="font-weight: bold;">���� ���͹� Ʈ���̴�(ȨƮ���̴�)</td>
								</tr>

								<tr align="center" style="color: gray;">
									<td colspan="4"><a href="https://www.youtube.com/watch?v=LG6CNzlj_6o"><img
												src="./img_doctor/���� ���͹�.PNG" alt=""></a></td>
								</tr>
								
								<br>
								<tr align="center" style="color: gray;">
									<br>
									<td colspan="4" style="font-weight: bold;">� ��õ(70kg����)</td>
								</tr>

								<tr align="center" style="color: gray;">
									<td><img src="./img_sport/cyclist.png" style="width: 100px; height: 100px;" alt=""><br><b class="bd">cyclie</b><br>70kg ���� 1�ð� 588 Į�θ�</td>
									<td><img src="./img_sport/hiking.png" style="width: 100px; height: 100px;" alt=""><br><b class="bd">hiking</b><br>70kg ���� 1�ð� 588 Į�θ�</td>
									<td><img src="./img_sport/running.png" style="width: 100px; height: 100px;" alt=""><br><b class="bd">running</b><br>10km/h 70kg ���� 1�ð� 735Į�θ�</td>
									<td><img src="./img_sport/swimming.png" style="width: 100px; height: 100px;" alt=""><br><b class="bd">swimming</b><br>70kg ���� 1�ð� 514 Į�θ�</td>
								</tr>

							</table>

							<br>
							<br>
							<h3 id="history">��Ʈ���� ��ȭ ȣ���</h3>
							<br>
							<center><a href="https://www.youtube.com/watch?v=qkDjMJkLxIo"> <img
										src="./img_doctor/ȣ����̹���.PNG" alt=""></a> </center>
							<br>
							<h5 style="text-align: center;">���Ǻ����� ��õ �����Դϴ�</h5>
							<br>

							<p style="text-align: center;" class="point">����</p>

							<table style="color: gray;">

								<tr>
									<td colspan="2">����� �ڼ��� �ɾ��� �� �� ���� ������ �ٸ� ���� ������ ���ϴ�. �ڷ� ���� ���̽� ���� �谡 ������ ������ ���� ���� ���� �谡 ���ϴ�. ������ ȣ���� ���̽��� ȣ���� ���, ����� �����ϴ�.</td>
								</tr>

								<tr>
									<td>1</td>
									<td>���� �� ���� ���� ���̸��Ŵ�</td>
								</tr>
								<tr>
									<td>2</td>
									<td>���� �� ���� ȣ���� �����</td>
								</tr>
								<tr>
									<td>3</td>
									<td>�ټ��� �� ���� ���� õõ�� ������</td>
								</tr>
								<tr>
									<td>4</td>
									<td>���� �� ���� ȣ���� �����</td>
								</tr>
								<tr>
									<td>5</td>
									<td>�� ������ 3�� �ݺ��մϴ�</td>
								</tr>
							
							</table>


						</div>


						<div class="col-6 col-12-medium">
							<br><br>
							<h3 id="history">���鿡 ���� ����</h3>
							<ol>
								<b>
									<li>ī������ ������ ����� ���ϱ�</li>
									<li>�ʹ� ������ų� ��θ� ���·� ����� �ʱ�</li>
									<li>�׻� ������ �ð��� �Ͼ��</li>
									<li>��Ģ���� ��ϱ�</li>
									<li>��ħ �� ������ ���� ���� ���ϱ�</li>
									<li>������ ������ ���Ը� �����ϱ�</li>
								</b>
							</ol>
						</div>
					</div>
			</div>
		</div>
		</div>
		</section>





		<br>
		<br>
		<h4 style="text-align: center;">�߰��ϰ� ���� ī�װ��� �ִٸ� �˷��ּ���</h4>
		<p style="text-align:center;">������� �ǰ��� �켱�Ͽ� �������� �߰��ϰڽ��ϴ�</p>
		<br>

		</section>


		</div>

		<button type="button" id="gotop"><a href="#top">�� ����</a></button>


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

		<!-- �� ��Ʈ -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'radar',
				data: {
					labels: ['���� �ð�', '�ɹڼ� ������', '�ڰ���', '���� ȯ��', '������ ��'],
					datasets: [{
						label: '�赵������ ��������',
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
						// ��� �������� �߰��κ�!
						label: '��� ��������',
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
						label: '�ٴ� Ƚ��',
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