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

			/* ���� home, �α׾ƿ� ��ư */
			.topbutton {
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

			.table {
				color: gray;
				text-align: center;
				font-weight: bold;
			}

			/* �������� ���� */
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

			/* padding���� �����ٶ� ��� */
			.padding {
				padding: 30px;
			}

			/* ������ ȣ��� �ѹ� */
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
					style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
			</span>
			<!-- ������ ��ư ������ �̵��ؿ� �� -->
			<h1 id="top"></h1>

			<!-- Header -->
			<header id="header">
				<h1>���� �ǵ��</h1>
				<br>
				<p>2022.03.01 ~ 2022.03.07</p>
			</header>

			<table class="menu">
				<tr>
					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">���� �ǵ��</a></td>
					<td><a href="doctortip.jsp">�ǷἭ��</a></td>
					<td><a href="doctorcheck.jsp">�������üũ</a></td>
				</tr>
			</table>

			<div id="main">
				<section id="content" class="main">
					<div class="col-6 col-12-medium">

						<h4 class="Bigtitle">���� ���� ����</h4>
						<br>
						<!-- �� ��Ʈ -->
						<div>
							<canvas id="myChart"></canvas>
						</div>

						<table class="table">
							<tr>
								<td></td>
								<td>����ð�</td>
								<td>�ɹ� ������</td>
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
						<p style="text-align: center;"> <b>���� 5%�� ����ȯ��</b> �� �����̽��ϴ�!</p>
						<p style="text-align: center;">���� '�赵��'���� ����� ��տ� ���� <u> �ſ� ���� ����ȯ��</u>�� ������ �ֽ��ϴ�. �ڰ���������
							������
							��ü������ ������ ȯ������ ���Դϴ�. ���� �Ϸ� 7�ð� �̻��� ����ð��� ������ ������ ���� ��ü���� ���� ������ ���� ���� �� �־����ϴ�.
							<u>������ �</u>���� �ɹڼ� �������� �����ȴٸ� �� ���� ���� ������ ���� �� ���� ���Դϴ�.
						</p>

						<br>
						<hr>
						<h4 class="Bigtitle">� ��õ</h4>
						<br>

						<table class="physical">
							<tr>
								<td colspan="4" style="font-weight: bold;">���͹� �</td>
							</tr>

							<tr>
								<td colspan="4">���͹� ��� �Ȱ� �ٰ� �ݺ��ϴ� ����� ���������� ��� Ź���մϴ�.
									�ִ�ɹڼ����� ~�Ͽ� ~�� ��ǥ�� �մϴ�.</td>
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
									<h4 style="font-weight: bold;">�Ѵ� � ��ǥ��</h4>
									<br>
									<p><b style="font-weight: bold;">"2�ְ� 1���� ������</b> ��ǥ�� ������ �÷����ϴ�"</p>
									<p>����� ��å��, ��� ������ ó�� 5�а� ���� Ǯ�鼭 õõ�� �Ƚ��ϴ�. �� ������ ���� ���� �̿Ͻ����ݴϴ�.
										�� �� 2�а� õõ�� �ȱ� / 2�а� ������ �ٱ� / 1�а� õõ�� �ȱ⸦ �ݺ��մϴ�</p>
								</td>

							</tr>
						</table>


						<table class="table">
							<tr>
								<td colspan="4">������ ���͹� Ʈ���̴�(Ȩ Ʈ���̴�)</td>
							</tr>

							<tr>
								<td colspan="4"><a href="https://www.youtube.com/watch?v=zNsUXIxwh6U"><img
											src="./img_doctor/���͹�.PNG" alt=""></a></td>
							</tr>

							<tr>
								<td colspan="4">���� ���͹� Ʈ���̴�(Ȩ Ʈ���̴�)</td>
							</tr>

							<tr>
								<td colspan="4"><a href="https://www.youtube.com/watch?v=LG6CNzlj_6o"><img
											src="./img_doctor/���� ���͹�.PNG" alt=""></a></td>
							</tr>
						</table>
						<br>
						<h4 class="Bigtitle">� �� Į�θ� �Ҹ�</h4>
						<h5 style="text-align: center;">(60kg/1�ð� ����)</h5>

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
							<h3 class="minititle">���鿡 ���� ��Ȱ����</h3>
							<ol type="a" class="padding">

								<li>ī������ ������ ����� ���ϱ�</li>
								<li>�ʹ� ������ų� ��θ� ���·� ����� �ʱ�</li>
								<li>�׻� ������ �ð��� �Ͼ��</li>
								<li>��Ģ���� ��ϱ�</li>
								<li>��ħ �� ������ ���� ���� ���ϱ�</li>
								<li>������ ������ ���Ը� �����ϱ�</li>
							</ol>
							<hr>
							<h3 class="minititle"> ��Ʈ���� ��ȭ ȣ���</h3>
							<div>
								<br>
								<center><a href="https://www.youtube.com/watch?v=qkDjMJkLxIo"> <img
											src="./img_doctor/ȣ����̹���.PNG" alt="" width="300px"></a> </center>
								<br>
								<br>

								<table style="color: gray;">

									<tr>
										<td colspan="2" style="background-color: white;">����� �ڼ��� �ɾ��� �� �� ���� ������ �ٸ� ����
											������ ���ϴ�. �ڷ� ���� ���̽� ���� �谡 ������ ������
											���� ���� ����
											�谡 ���ϴ�. ������ ȣ���� ���̽��� ȣ���� ���, ����� �����ϴ�.</td>
									</tr>

									<tr>
										<td class="point2">1</td>
										<td>���� �� ���� ���� ���̸��Ŵ�</td>
									</tr>
									<tr>
										<td class="point2">2</td>
										<td>���� �� ���� ȣ���� �����</td>
									</tr>
									<tr>
										<td class="point2">3</td>
										<td>�ټ��� �� ���� ���� õõ�� ������</td>
									</tr>
									<tr>
										<td class="point2">4</td>
										<td>���� �� ���� ȣ���� �����</td>
									</tr>
									<tr>
										<td class="point2">5</td>
										<td>�� ������ 3�� �ݺ��մϴ�</td>
									</tr>

								</table>
							</div>
							<br>
							<p style="text-align: center;">��� ��, ��ħ �� �ѹ��� �������� ���� �������ּ���</p>

						</div>
						<br>
					</div>
			</div>
			<br>
			<br>
			<br>
			<!-- �������� -->
			<section>
				<h2 id="survey">���� ������ ����</h2>
				<h5 id="survey">�����Ͻ� �е� �� ��÷�Ͽ� ����Ƽ���� �����帳�ϴ�</h5>
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
							<label for="verygood">�ſ� ����</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="good" name="demo-priority">
							<label for="good">����</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="normal" name="demo-priority">
							<label for="normal">����</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="bad" name="demo-priority">
							<label for="bad">�Ҹ���</label>
						</div>
						<div class="col-4 col-12-small">
							<input type="radio" id="verybad" name="demo-priority">
							<label for="verybad">�ſ� �Ҹ���</label>
						</div>

						<div class="col-12">
							<textarea name="demo-message" id="demo-message" placeholder="�Ͻð� ���� ������ �����ôٸ� �����ּ���"
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
		<h4 style="text-align: center;">"�ǵ�� ���� ���ǻ����� �����ø� �����ּ���"</h4>
		<p style="text-align:center;">010-0000-0000</p>
		<p style="text-align:center;">������ ģ���� ����ص帮�ڽ��ϴ�</p>
		<br>

		</section>


		</div>
		<br>
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