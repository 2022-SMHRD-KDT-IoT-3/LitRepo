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

		<!-- ��Ʈ js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<link rel="preconnect" href="https://fonts.googleapis.com">

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);


			/* ��ư */
			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}

			/* �޴� */
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

			/* ��� �ǵ�� �κ� */
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

			/* �������ǻ� �̹��� */
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

			<br>
			<table class="menu">
				<tr>

					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">���� �ǵ��</a></td>
					<td><a href="doctortip.jsp">�ǻ� ���</a></td>
					<td><a href="doctorcheck.jsp">�������üũ</a></td>
				</tr>
			</table>


			<div id="main">
				<section>
					<div class="row">
						<div class="col-6 col-12-medium">
							<br> <br>
							<h4 class="Bigtitle">�����丮</h4>
							<hr>
							<h5 class="minititle">��սɹڼ�</h5>
							<br>
							<div>
								<canvas id="myChart"></canvas>
							</div>
							<br>
							<div class="defaultfont">
								�ּ� <b>68bpm</b>, �ִ� <b>77bpm</b>
							</div>

							<br>
							<hr>
							<h5 class="minititle">��� ���ú�</h5>
							<br>
							<div>
								<canvas id="myChart2"></canvas>
							</div>
							<br>
							<div class="defaultfont">
								�ּ� <b>35dB</b>, �ִ� <b>42dB</b>
							</div>



							<br>
							<hr>
							<h5 class="minititle">��� ��/����</h5>
							<br>

							<DIV>
								<div>
									<canvas id="myChart3"></canvas>
								</div>
								<br>
								<div class="defaultfont">
									�ּ� <b>17��</b>, �ִ� <b>23��</b>
								</div>
								<br> <br>
								<div>
									<canvas id="myChart4"></canvas>
								</div>
								<br>
								<div class="defaultfont">
									�ּ� <b>30%</b>, �ִ� <b>35%</b>
								</div>

							</DIV>

							<hr>
							<div style="text-align: center;">
								<br>
								<h4 class="Bigtitle">�м����</h4>
								<br>
								<div>
									<u>'�赵��'</u> ���� ���� �ɹڼ� : <b>60 ~ 72 bpm</b>
								</div>
								<div></div>
								<br>
								<div>
									<u>'�赵��'</u> ���� ���� ���ú� : <b>35 ~ 40 dB</b>
								</div>
								<br>
								<div>
									�ǳ� ��/���� ���� : <b>����</b>
								</div>

								<br>
								<hr>
								<br>
								<h3 class="Bigtitle">�ǻ� �ǵ��</h3>
								<br>


								<h4 class="minititle">���� �Ұ�</h4>

								<div class="feedback">
									<p>
										���� '�赵��' ���� ��� �ɹ� ���� <b>72</b> �� 26�� ���� ���� <u>���� ��ġ</u>�Դϴ�. �׷���
										���� ��ü �ɹ� �� �����丮 �м� ��� �ڴ� ������ �ɹ� �� ��� ��ġ�� ���Դϴ�. �ڿ������� �����̱⵵ ������
										�� �������� ���� ������ ���� ��Ʈ������ �ްų� �ῡ�� ��ô�̴� ��찡 ���� ������ ����˴ϴ�. ���� �ּ� �ɹ�
										���� �ִ� �ɹڼ��� ���̰� ���� ���� ������ �� �κп� �����ϼž� �� �� �����ϴ�. <u>������ ������
											��ġ �̻��� ������ �ʽ��ϴ�.</u> �׷��� �ǰ��� ������ ���� ���� �������� Ű��� <b>����� �</b>��
										��õ�ص帳�ϴ� �� �� ������ ��ġ�� ��鼭 �ɹ� �� �����丮�� üũ�ϼ���
									</p>
								</div>

								<div style="text-align: center;">�޽ı� �ɹڼ�(����) <center><img class="imgheart"
											src="./img_doctor/�ɹڼ�.PNG"></center>
								</div>

								<br>
								<br>
								<br>
								<!-- �������ǻ��� ���� -->
								<table  style="font-weight: bold;">
									<tr></tr>
									<tr class="doctortable">
										<td>
											<img class="imgfile" src="./img_doctor/diagnosis.png" alt="">

											<div><b>'������' �ǻ��� ����</b></div><br>

											<div> 1. ����� � �Ϸ� 30�� �̻� �ϱ�</div>
											<div> 2. �Ѵ� �� �ɹڼ� ��ġ �����ϱ�</div>
											<div>3. ���� ��/���� ���� �����ϱ�</div>
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
			<p class="defaultfont" style="font-weight: bold;">"������ �м� ����� ����
				���� �ǵ�� �������� �ʿ��� ������ �����ص帳�ϴ�"</p>



			<br> <br> <br>
			</section>


		</div>

		<button type="button" class="gotop">
			<a href="#top">�� ����</a>
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

		<!-- �ɹڼ� ��Ʈ -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {
				type: 'line',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '�Ϸ� ��� ���� �ɹ� ��',
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

		<!-- ���ú� ��Ʈ -->
		<script type="text/javascript">
			var context = document.getElementById('myChart2').getContext('2d');
			var myChart2 = new Chart(context, {
				type: 'line', // ��Ʈ�� ����
				data: { // ��Ʈ�� �� ������
					labels: [
						//x ��
						'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{ //������
						label: '�Ϸ� ��� ���� ���ú�', //��Ʈ ����
						fill: true, // line ������ ��, �� ������ ä����� ��ä�����
						data: [40, 42, 38, 39, 35, 41, 40 //x�� label�� �����Ǵ� ������ ��
						],
						backgroundColor: [
							//����

							'rgba(25, 190, 124,0.2)'

						],
						borderColor: [
							//��輱 ����
							'rgba(25, 159, 64, 1)'

						],
						borderWidth: 1
						//��輱 ����
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

		<!-- �½��� ��Ʈ -->

		<script>
			const ctx1 = document.getElementById('myChart3').getContext('2d');
			const myChar3 = new Chart(ctx1, {
				type: 'bar',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '�Ϸ� ��� �ǳ� �µ�',
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






		<!-- ��� �ǳ� ���� -->
		<script>
			const ctx2 = document.getElementById('myChart4').getContext('2d');
			const myChar4 = new Chart(ctx2, {
				type: 'bar',
				data: {
					labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
					datasets: [{
						label: '�Ϸ� ��� �ǳ� ����',
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