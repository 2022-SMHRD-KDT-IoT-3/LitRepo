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

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);


			#img {
				width: 20px;
				height: 20px;
			}

			#question {
				background-color: rgba(207, 170, 211, 0.452);
			}

			#num {
				text-align: center;
				background-color: rgba(161, 137, 165, 0.397);
			}

			#num2 {
				text-align: center;
				font-weight: bold;
				font-size: 19px;
			}

			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}

			#id1 {
				padding-top: 90px;
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
			<header id="header">
				<h1 id="id1">���� ���� üũ</h1>
				<br>
				<br>
			</header>


			<table class="menu">
				<tr>
					<td><a href="doctor main.jsp">Main</a></td>
					<td><a href="doctormine.jsp">���� �ǵ��</a></td>
					<td><a href="doctortip.jsp">�ǷἭ��</a></td>
					<td><a href="doctorcheck.jsp">�������üũ</a></td>
				</tr>
			</table>



			<!-- Content -->
			<section id="content" class="main">

				<!-- Main -->
				<div>
					<form>
						<table>
							<form action="">
								<tr>
									<td colspan="5">
										<h4 style="text-align: center;">���� �Ѵ� ����, ����� �Ʒ��� ������ ���ڴ� �� �󸶳� ���� ������ �־����ϱ�?
										</h4>
									</td>
								</tr>

								<tr id="question">
									<td></td>
									<td><b>����</b></td>
									<td><b>�� 1ȸ �̸�</b></td>
									<td><b>�� 1~2ȸ</b></td>
									<td><b>�� 3ȸ �̻�</b></td>
								</tr>
								<tr>
									<td id="num">1</td>
									<td colspan="4">
										��ħ �� 30�� �̳��� �� �� �� ������
									</td>
								</tr>
								<tr>
									<td id="num">2</td>
									<td colspan="4">
										�ѹ����̳� ������ ����
									</td>
								</tr>
								<tr>
									<td id="num">3</td>
									<td colspan="4">
										ȭ��ǿ� ������ �Ͼ�� �ߴ�
									</td>
								</tr>
								<tr>
									<td id="num">4</td>
									<td colspan="4">
										����ϰ� �� �� ���� ������
									</td>
								</tr>
								<tr>
									<td id="num">5</td>
									<td colspan="4">
										��ħ�� �ϰų� �ò����� �ڸ� ��Ҵ�
									</td>
								</tr>
								<tr>
									<td id="num">6</td>
									<td colspan="4">
										�ʹ� ��ٰ� ��������
									</td>
								</tr>
								<tr>
									<td id="num">7</td>
									<td colspan="4">
										�ʹ� ���ٰ� ��������
									</td>
								</tr>
								<tr>
									<td id="num">8</td>
									<td colspan="4">
										���� ���� �پ���
									</td>
								</tr>
								<tr>
									<td id="num">9</td>
									<td colspan="4">
										���� ���� �󸶳� ���� ���� �����߽��ϱ�?
									</td>
								</tr>
								<tr>
									<td id="num">10</td>
									<td colspan="4">
										��ȸȰ���� �ϴ� ���� ���� ������ �������ϱ�?
									</td>
								</tr>
								<tr>
									<td id="num">11</td>
									<td colspan="4">
										����� �Ͽ� �����ϴµ� ������ �־�����?
									</td>
								</tr>



						</table>
					</form>

					<br>
					<div style="background-color: rgba(219, 170, 208, 0.26);">
						<br>
						<br>
						<h2 style="text-align: center;">��� �ؼ���</h2>
						<hr>
						<div id="num2">���� : 0��</div><br>
						<div id="num2">�� 1ȸ �̸� : 1��</div><br>
						<div id="num2">�� 1~2ȸ : 2��</div><br>
						<div id="num2">�� 3ȸ �̻� : 3��</div><br>

						<br>
						<table>
							<tr>
								<td id="num">
									0 ~ 7��
								</td>

								<td align="center">���� �����Դϴ�</td>

							<tr>
								<td id="num">
									8 ~ 13��
								</td>
								<td align="center">������ ������ ���ϴ� ���·� ���𰡿� ���� ������ ���� ���� ���عް� �ֽ��ϴ�</td>
							</tr>

							<tr>
								<td id="num">14 ~ 24��</td>
								<td align="center">������ַ� ���ȭ�ȴٸ� �ϻ��Ȱ�� ������ ���� �� �ֽ��ϴ�</td>
							</tr>

							<tr>
								<td id="num">25�� �̻�</td>
								<td align="center">�������� ġ�ᰡ �ʿ��մϴ�</td>
							</tr>
						</table>
						<br>



					</div>
					<br><br>
				</div>
				<p style="text-align: center;">"������ ���� ���� �� �ִ� �ѱ��� ��ó���� ����˻��� �Ϻι����� �����Խ��ϴ�.
					�ڼ��� ���� ����� ������ ���ؼ� �˻��� �� �ֽ��ϴ�"
				</p>
				<br>
				<br>
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

	</body>

	</html>