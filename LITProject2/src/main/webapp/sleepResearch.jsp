<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>

		<title>DreamCatcher</title>
		
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
			
		#main1{
			background-color: rgba(246, 242, 247, 0.63);
		}

		#txt{
			color: white;
			text-align: center;
			background-color: rgb(187, 155, 200);
			height: 30px;
		}


		#txt2{
			color: black;
		}

		#num{
			background-color: rgba(205, 171, 209, 0.856);
			text-align: center;
		}

		#num2{
			text-align: center;
			background-color: rgba(214, 178, 211, 0.541);
		}

		#ptxt{
			background-color: rgba(240, 201, 225, 0.288);
			text-align: center;
		}
		.span1 {
				right: 20px;
	top: 15px;
	position: absolute;
}
.btn-outline-secondary {
	background-color: transparent;
    box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%);
    color: #ffffff;
	border-radius: 8px;
	border-color:rgb(255 255 255 / 35%);
	padding-right:10px;
	width:80px;
	font-size:12px;
}
#join{
	padding-top: 40px;
}
		</style>

</head>
<span class="span1">
	
</span>
<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				<div id="wrapper">
					<span class="span1">
						<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary">HOME</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='login.jsp'">�α���</button>
					</span>
				<!-- Header -->
					<header id="header">
						<h1 id="join">���� ��������</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main1">
					<section id="txt">����</section>
						<form>
							<table>
								<form action="">
									<tr>
										<td colspan="5">
											<h6 id="txt2">���� �Ѵ� ����, ����� �Ʒ��� ������ ���ڴ� �� �󸶳� ���� ������ �־����ϱ�?</h6>
									</td>
									</tr>
									
									<tr>
										<td></td>
										<td><b>����</b></td>
										<td><b>�� 1ȸ �̸�</b></td>
										<td><b>�� 1~2ȸ</b></td>
										<td><b>�� 3ȸ �̻�</b></td>
									</tr>
									<tr>
										<td id = "num">1</td>
										<td colspan="4"> 
											��ħ �� 30�� �̳��� �� �� �� ������
										</td>
									</tr>
									<tr>
										<td id = "num">2</td>
										<td colspan="4">
											�ѹ����̳� ������ ����
										</td>
									</tr>
									<tr>
										<td id = "num">3</td>
										<td colspan="4">
											ȭ��ǿ� ������ �Ͼ�� �ߴ�
										</td>
									</tr>
									<tr>
										<td id = "num">4</td>
										<td colspan="4">
											����ϰ� �� �� ���� ������
										</td>
									</tr>
									<tr>
										<td id = "num">5</td>
										<td colspan="4">
											��ħ�� �ϰų� �ò����� �ڸ� ��Ҵ�
										</td>
									</tr>
									<tr>
										<td id = "num">6</td>
										<td colspan="4">
											�ʹ� ��ٰ� ��������
										</td>
									</tr>
									<tr>
										<td id = "num">7</td>
										<td colspan="4">
											�ʹ� ���ٰ� ��������
										</td>
									</tr>
									<tr>
										<td id = "num">8</td>
										<td colspan="4">
											���� ���� �پ���
										</td>
									</tr>
									<tr>
										<td id = "num">9</td>
										<td colspan="4">
											���� ���� �󸶳� ���� ���� �����߽��ϱ�?
										</td>
									</tr>
									<tr>
										<td id = "num">10</td>
										<td colspan="4">
										��ȸȰ���� �ϴ� ���� ���� ������ �������ϱ�?
										</td>
									</tr>
									<tr>
										<td id = "num">11</td>
										<td colspan="4">
										����� �Ͽ� �����ϴµ� ������ �־�����?
										</td>
									</tr>


							
							</table>
						</form>

						<br>
						<section id="txt">��� �ؼ���</section>
						<br>
						<div id="num2">���� : 0��</div><br>
						<div id="num2">�� 1ȸ �̸� : 1��</div><br>
						<div id="num2">�� 1~2ȸ : 2��</div><br>
						<div id="num2">�� 3ȸ �̻� : 3��</div><br>

						<br>
						<section id="txt">���</section>
						<br>
						
						<div align = "center">�ּ� 0 ~ �ִ� 33��</div>
						
						<br>
						<table>
							<tr><td id="num">
								0 ~ 7��	
							</td>

							<td align="center">���� �����Դϴ�</td>

							<tr><td id="num">
								8 ~ 13��	
							</td>
						<td align="center">������ ������ ���ϴ� ���·� ���𰡿� ���� ������ ���� ���� ���عް� �ֽ��ϴ�</td></tr>
						
						<tr>
							<td id="num">14 ~ 24��</td>
							<td align="center">������ַ� ���ȭ�ȴٸ� �ϻ��Ȱ�� ������ ���� �� �ֽ��ϴ�</td>
						</tr>

						<tr>
							<td id="num">25�� �̻�</td>
							<td align="center">�������� ġ�ᰡ �ʿ��մϴ�</td>
						</tr>
					</table>
				
						
						
					</div>
					<br><br>
					
					<p id="ptxt">"������ ���� ���� �� �ִ� �ѱ��� ��ó���� ����˻��� �Ϻι����� �����Խ��ϴ�.
						�ڼ��� ���� ����� ������ ���ؼ� �˻��� �� �ֽ��ϴ�"
					</p>
					<br>
					<br>
					<br>
					
	
				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
		</body>
</html>