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

<!-- �������� ���� -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<!-- ��Ʈ js -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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

/* ȯ�� �޴� �� css */
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

/* ȯ�� �ǵ�� ������ ���� */
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
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
		</span> <br> <br> <br> <br>
		<header id="header">
			<h1>ȯ�� ����͸�</h1>
			<br>
		</header>

		<br>
		<table class="menu">
			<tr>
				<td><a href="realDoctorMain.jsp">������</a></td>
				<td><a href="realmonitoring.jsp">ȯ�� ����͸�</a></td>
				<td><a href="realBoard.jsp">�Խ���</a></td>
			</tr>
		</table>

		<br>
		<!-- ������ ����  �κ� -->
		<div id="main">

			<!-- ȯ�� �޴� �� -->
			<div class="container">

				<ul class="tabs" style="text-align: center;">
					<li class="tab-link current" data-tab="tab-1">ȯ�� 1</li>
					<li class="tab-link" data-tab="tab-2">ȯ�� 2</li>
					<li class="tab-link" data-tab="tab-3">ȯ�� 3</li>
				</ul>

				<!-- ȯ�� 1 ���� -->
				<div id="tab-1" class="tab-content current">

					<div>
						<canvas id="myChart"></canvas>
					</div>
					<hr>
					<table style="text-align: center;">
						<tr>
							<td>������ ��</td>
							<td>���� �ð�</td>
							<td>���� ȯ��</td>
							<td>�ڰ���</td>
							<td>�ɹڼ� ������</td>
						</tr>

						<tr>
							<td>80</td>
							<td>80</td>
							<td>90</td>
							<td>85</td>
							<td>56</td>
						</tr>

						<tr>
							<td colspan="5">���� �ɹڼ� �������� ��տ� ���� �������ϴ� <br> ���� ȯ���� �ſ�
								����, ��� ����ð��� <b>7</b>�ð��Դϴ�.
							</td>
						</tr>
					</table>

					<br>
					<section class="feedbacksend">
						<h3>
							<b>�赵��</b> ȯ�ڿ��� ������ �ǵ��
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="������ �Է����ּ���">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">�ǵ��
								����</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">����</button>
					</center>

					<br>
					<br>
					<br>
					<br>

				</div>
				<!-- ȯ�� 2 ���� -->

				<div id="tab-2" class="tab-content">

					<div>
						<canvas id="myChart2"></canvas>
					</div>

					<hr>

					<table style="text-align: center;">
						<tr>
							<td>����</td>
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
							<td colspan="8">���� �ڰ��� ������ ��յ��ú��� 40�� �Ѿ� <b>60</b>�� �������Դϴ�
							</td>
						</tr>

					</table>

					<br>

					<section class="feedbacksend">
						<h3>
							<b>�赵��</b> ȯ�ڿ��� ������ �ǵ��
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="������ �Է����ּ���">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">�ǵ��
								����</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">����</button>
					</center>

					<br>
					<br>
					<br>
					<br>
				</div>

				<!-- ȯ�� 3 ���� -->

				<div id="tab-3" class="tab-content">
					<div>
						<canvas id="myChart3"></canvas>
					</div>
					<hr>
					<table style="text-align: center;">
						<tr>
							<td>�ǳ��µ�</td>
							<td>20</td>
							<td>21</td>
							<td>25</td>
							<td>24</td>
							<td>26</td>
							<td>28</td>
						</tr>

						<tr>
							<td colspan="7">���� �ſ� �������� �ǳ��µ��� �����ϰ� �ֽ��ϴ�</td>
						</tr>
					</table>


					<br>
					<section class="feedbacksend">
						<h3>
							<b>�赵��</b> ȯ�ڿ��� ������ �ǵ��
						</h3>
						<hr>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<input type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="������ �Է����ּ���">
						</div>
						<br>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">�ǵ��
								����</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
					</section>
					<center>
						<button type="button" class="btn btn-secondary btn-lg">����</button>
					</center>

					<br>
					<br>
					<br>
					<br>
				</div>

			</div>
		</div>
		<br> <br> <br> <br>





		<!-- ȯ�ڸ޴� �� js -->
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




		<!-- ȯ��1 ��Ʈ -->
		<script>
			const ctx = document.getElementById('myChart').getContext('2d');
			const myChart = new Chart(ctx, {

				type : 'radar',

				data : {

					labels : [ '���� �ð�', '�ɹڼ� ������', '�ڰ���', '���� ȯ��', '������ ��' ],

					datasets : [
							{

								label : '��ü ���� ����',

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
								// ��� �������� �߰��κ�!
								label : '��� ��������',
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

		<!-- ȯ�� 2 ��Ʈ -->
		<script type="text/javascript">
			var context = document.getElementById('myChart2').getContext('2d');
			var myChart2 = new Chart(context, {
				type : 'bar', // ��Ʈ�� ����
				data : { // ��Ʈ�� �� ������
					labels : [
					//x ��
					'3/1', '3/2', '3/3', '3/4', '3/5', '3/6', '3/7', ],
					datasets : [ { //������
						label : '�Ϸ� ��� ���� ���ú�', //��Ʈ ����
						fill : true, // line ������ ��, �� ������ ä����� ��ä�����
						data : [ 60, 52, 50, 49, 58, 65, 60, 0 //x�� label�� �����Ǵ� ������ ��
						],
						backgroundColor : [
						//����

						'rgba(25, 190, 124,0.2)', 'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)',
								'rgba(25, 190, 124,0.2)'

						],
						borderColor : [
						//��輱 ����
						'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)',
								'rgba(25, 159, 64, 1)', 'rgba(25, 159, 64, 1)'

						],
						borderWidth : 1
					//��輱 ����
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

		<!-- ȯ��3 ��Ʈ -->

		<script>
			const ctx1 = document.getElementById('myChart3').getContext('2d');
			const myChar3 = new Chart(ctx1,
					{
						type : 'bar',
						data : {
							labels : [ '3/1', '3/2', '3/3', '3/4', '3/5',
									'3/6', '3/7' ],
							datasets : [ {
								label : '�Ϸ� ��� �ǳ� �µ�',
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