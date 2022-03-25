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

		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<!-- jjh ������� ���� -->
		<header id="header">
            <h1>���� ��� �м�</h1>
            <p>���� ���������� ���� ���¿� ���� ����м� �Դϴ�</p>
        </header>
        
        <nav id="nav">
            <ul>
                <li><a href="doctor main.jsp">Main</a></li>
                <li><a href="doctormine.jsp">���� �ǵ��</a></li>
                <li><a href="doctortip.jsp">���� ���� ��</a></li>
                <li><a href="doctorcheck.jsp">�������üũ </a></li>
            </ul>
        </nav>	
		
					<div id="main">

					
						<section id="content" class="main">

							<h4><b>2022.03.01���� 2022.03.10������ �����������Դϴ�</b></h4>

			            </section>

			                <!-- �ǵ�� ������ -->
			                <!-- jjh ���� ���� ���� -->
			            <section>
				
				       <div class="row">
				          	<div class="col-6 col-12-medium">
						<h4 id="history"><strong>�����丮</strong></h4>
						<br>
						<h5 id="txt">��սɹڼ�</h5>
						<br>
						<div>
							<canvas id="myChart"></canvas>
						</div>
						<canvas id="myChart" width="400" height="80"></canvas>

						<br>
						<h5 id="txt">��� ���ú�</h5>
						<br>
						<div>
							<canvas id="myChart2"></canvas>
						</div>
						<canvas id="myChart2" width="400" height="80"></canvas>



						<br>
						<h5 id="txt">��� ��/����</h5>
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
							<h4 id="history">�м����</h4>
							<br>
							<ul>
								<li>���� ������ �޽ı� ��� �ɹڼ��� 69~72�Դϴ� </li>
								<br>
								<h4><strong>���� ���������� ��սɹڼ��� 72�� �������������
										��տ��� ��� ���Ϸ� �� ���ɼ��� �����ϴ�
										������ ��� �ʿ��մϴ�</strong></h4>

								<br>
								<br>
								<li>���ú� ���� ��� ��� 35���� �ϻ��Ȱ�� ���������� �����˴ϴ� </li>
								<br>
								<h4><strong>������ ������ �Ž��� ���ú��� 40�����Դϴ�.
										���� �ڰ��� �̿��� Ư���� ������ ���� ������ ������ ���� ȯ����
										���ٰ� ���� �� �ֽ��ϴ�.</strong></h4>

								<br>

							</ul>
							<h3 id="history"><b>�ǻ� �ǵ��</b></h3>
							<br>


							<h4 id="txt"><b>���� �Ұ�</b></h4>
							<br>

							<p>���� ������ ���� ��� �ɹ� ���� 72���� 26�� ���� ���� <u>���� ��ġ</u>�Դϴ�.
								�׷��� ���� ��ü �ɹ� �� �����丮 �м� ��� �ڴ� ���� �ް��� �ɹ� ���� Ƣ�� ��찡 ���Դϴ�
								�ڿ������� �����̱⵵ ������ �� ��ġ�� ���� ������ ���� ��Ʈ������ �ްų� �ῡ�� ��ô�̴�
								��찡 ���� ������ ����˴ϴ�. ���� �ּ� �ɹ� ���� �ִ� �ɹڼ��� ���̰� ���� ���� ������ �� �κп� �����ϼž� �� �� �����ϴ�.
								<u>������ ������ ��ġ�� ������ �ʽ��ϴ�.</u> �׷��� �ǰ��� ������ ���� ���� �������� Ű��� ����� ��� ��õ�ص帳�ϴ�
								�� �� ������ ��ġ�� ��鼭 �ں��鼭 �ɹ� �� �����丮�� üũ�ϼ���
							</p>



							<br>
							<h4 id="txt"><strong>'������' �ǻ��� ����</strong></h4>
							<br>

							<ul class="alt" id="survey">
								<li>�ڱ��� �ڵ��� ������ �ʱ�</li>
								<li>�Ϸ� 30�� �̻� ����� ��ϱ�</li>
								<li>�Ѵ޵��� �ɹڼ� �����丮 Ȯ���غ���</li>
							</ul>
						</div>

						<div class="col-6 col-12-medium">
							<br><br>
							<h3 id="history">���鿡 ���� ��Ȱ����</h3>
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

	<!-- ���ú� ��Ʈ -->
	<script type="text/javascript">
		var context = document
			.getElementById('myChart2')
			.getContext('2d');
		var myChart2 = new Chart(context, {
			type: 'bar', // ��Ʈ�� ����
			data: { // ��Ʈ�� �� ������
				labels: [
					//x ��
					'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'
				],
				datasets: [
					{ //������
						label: '�Ϸ� ��� ���� ���ú�', //��Ʈ ����
						fill: false, // line ������ ��, �� ������ ä����� ��ä�����
						data: [
							40, 42, 38, 39, 35, 41, 40 //x�� label�� �����Ǵ� ������ ��
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

	<!-- �½��� ��Ʈ -->

	<script>
		const ctx1 = document.getElementById('myChart3').getContext('2d');
		const myChar3 = new Chart(ctx1, {
			type: 'line',
			data: {
				labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
				datasets: [{
					label: '�Ϸ� ��� �ǳ� �µ�',
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






	<!-- ��� �ǳ� ���� -->
	<script>
		const ctx2 = document.getElementById('myChart4').getContext('2d');
		const myChar4 = new Chart(ctx2, {
			type: 'line',
			data: {
				labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7'],
				datasets: [{
					label: '�Ϸ� ��� �ǳ� ����',
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