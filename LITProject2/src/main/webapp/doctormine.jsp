<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!DOCTYPE HTML>
<style>

/* �� ��� ���� �뵵, �������� ���� */
#survey{
	margin: auto;
	text-align: center;
}

#history{
	background-color: lightgrey;
	text-align: center;
	font-size: 20px;
	border-radius: 10px;
	
}

#txt{
	text-align: center;
	margin: auto;
	background-color:antiquewhite;
	border-radius: 10px;
}
/* ���� */
video { max-width: 80%; display: block; margin: 20px auto; }

</style>
<html>
	<head>
		<title>doctorFeedback</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- ��Ʈ js -->
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

		<!-- ��Ʈ -->
		<style>
		@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
	</style>

	</head>
	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"">
	
		<!-- Wrapper -->
		<div id="wrapper">
			
			<!-- Header -->
			<header id="header">
				<h1>���� �ǰ� �ǵ��</h1>
				<p>���� ���������� ���� ���¿� ���� �ǵ���Դϴ�</p>
			</header>
			
			<nav id="nav">
				<ul>
					<li><a href="doctor main.jsp">Main</a></li>
					<li><a href="doctormine.jsp">���� �ǵ��</a></li>
					<li><a href="doctortip.jsp">���� ���� ��</a></li>
					<li><a href="doctorcheck.jsp">�������üũ </a></li>
				</ul>
			</nav>
					

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">

								<!-- ���� ��¥, �г��� �� -->
									<section>
										<h4 id="survey"> <strong>2022.03.01~2022.03.07</strong>
											 �Ⱓ������ ���� �����͸� �������� ���� �������� ��õ�մϴ�</h4>
									</section>

								<!-- �ǵ�� ������ -->
									<section>
										
										<div class="row">
											<div class="col-6 col-12-medium">
												<br>
												<br>
												<h4 id ="history">���� ���� ����</h4>
												<br>

												<div>
													<canvas id="myChart"></canvas>                                                    
												  </div>
	
												  <br><br><br>
												  <h4 id ="history" >� ��õ</h4>
												  <br>

												<table>
													<tr align="center">
														<td style="font-weight: bold;">���͹� �</td>
													</tr>
													<tr>
														<td>���͹� ��� �Ȱ� �ٰ� �ݺ��ϴ� ����� ���������� ��� Ź���մϴ�.
															�⺻������ ���� ��� �������� �ִ�ɹڼ����� ���� ���� ��ǥ�� �մϴ�.</td>
													</tr>

													<tr align="center">
														<td style="font-weight: bold;">������ ���͹� Ʈ���̴�(ȨƮ���̴�)</td>
													</tr>

													<tr align="center">
														<td><a href="https://www.youtube.com/watch?v=zNsUXIxwh6U"><img src="./img����Ѱ�/���͹�.PNG" alt=""></a></td>
													</tr>
													<tr align="center">
														<td style="font-weight: bold;">���� ���͹� Ʈ���̴�(ȨƮ���̴�)</td>
													</tr>

													<tr align="center">
														<td><a href="https://www.youtube.com/watch?v=LG6CNzlj_6o"><img src="./img����Ѱ�/���� ���͹�.PNG" alt=""></a></td>
													</tr>

												</table>

												<br>
												<h3 id ="history"><b>��Ʈ���� ��ȭ ȣ���</b></h3>
												<br>
													

												
												<br>
												
												<p>��� �ϸ� �̷� �׷��� ���·� ���� �����ϴ�. �׷��� �̷��� �ȴٴ� ������ �����ֱ�</p>

									
											</div>
											
											<div class="col-6 col-12-medium">
												<br><br>
												<h3 id ="history">���鿡 ���� ��ǰ ��õ</h3>
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
												</section>
											</div>
										</div>	
									</section>

								
									<br><br><br>	
								<section>


									<table>
										<tr id = "survey" style="font-weight: bold;"><td>
											���� ���� �� �Ƿ���
										</td></tr>
									
									</table>



									<table>
										<tr>
											<td>���� �ϱ� ����</td>
											<td>���� ���� ����</td>
											<td>���� ���� ����</td>
											<td>���� ���� ����</td>
										</tr>

									</table>

									<table>
										<tr>
											<td>������ �ǻ�</td>
											<td>�躴�� �ǻ�</td>
											<td>�谣ȣ �ǻ�</td>
											<td>�Ⱦ��� �ǻ�</td>
										</tr>
									</table>
								</section>	



								<br><br><br><br>
								<!-- �������� -->
									<section>
										<h2 id="survey" >���� ������ ����</h2>
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
													<textarea name="demo-message" id="demo-message" placeholder="�Ͻð� ���� ������ �����ôٸ� �����ּ���" rows="5"></textarea>
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
type: 'radar',
data: {
labels: ['���� �ð�', '�ɹڼ� ������', '�ڰ���', '���� ȯ��', '������ ��'],
datasets: [{
	label: '���������� ��������',
	data: [80, 60, 30, 95, 80],
	backgroundColor: [
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		'rgba(255, 99, 132, 0.2)',
		
	],
	borderColor: [
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		'rgba(250, 99, 132, 1)',
		
	],
	borderWidth: 1

}, { 
    // ��� �������� �߰��κ�!
    label: '��� ��������',
	data: [85, 50, 45, 95, 95],
	backgroundColor: [
		'rgba(78, 56, 245, 0.2)',
		'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
        'rgba(78, 56, 245, 0.2)',
		
	],
	borderColor: [
        'rgba(78, 56, 245, 1)',
		'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
        'rgba(78, 56, 245, 1)',
		
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
				'3/1','3/2','3/3','3/4','3/5','3/6','3/7'
			],
			datasets: [
				{ //������
					label: '�Ϸ� ��� ���� ���ú�', //��Ʈ ����
					fill: false, // line ������ ��, �� ������ ä����� ��ä�����
					data: [
						40,42,38,39,35,41,40 //x�� label�� �����Ǵ� ������ ��
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
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
            



</body>
</html>
    