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
	
}

#txt{
	text-align: center;
	margin: auto;
	background-color:antiquewhite;
	border-radius: 10px;
}
.span1 {
				right: 10px;
	top: 10px;
	position: absolute;
}
#header{
    padding-top:40px;
}

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



	</head>
	<body class="is-preload">
	
		<!-- Wrapper -->
			<div id="wrapper">

				<span class="span1">
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'">HOME</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'">�α׾ƿ�</button>
		
				
		
				</span>
				<!-- Header -->
					<header id="header">
						<h1>���� �ǰ� �ǵ��</h1>
						<p>���� ���������� ���� ���¿� ���� �ǵ���Դϴ�</p>
					</header>

				<!-- Main -->
					<div id="main">

						<!-- Content -->
							<section id="content" class="main">

								<!-- ���� ��¥, �г��� �� -->
									<section>
										<h4 id="survey"> <strong>2022.03.01~2022.03.07</strong>
											 �Ⱓ������ ���� ������ �Դϴ�</h4>
										
									</section>

								<!-- �ǵ�� ������ -->
									<section>
										<br><br>
										<div class="row">
											<div class="col-6 col-12-medium">
												<h4 id = "history"><strong>�����丮</strong></h4>
												<br>
												<h5 id="txt">��սɹڼ�</h5>
												<br>									
												<div>
													<canvas id="myChart"></canvas>
												  </div>
												<canvas id="myChart" width="400" height="80"></canvas>
			
												<br>
												<h5 id ="txt">��� ���ú�</h5>
												<br>
												<div>
													<canvas id="myChart2"></canvas>
												  </div>
												<canvas id="myChart2" width="400" height="80"></canvas>

												
		
												<br>
												<h5 id ="txt">��� ��/����</h5>
												 <br>
												<div>
													<canvas id="myChart3"></canvas>
												  </div>
												<canvas id="myChart3" width="400" height="80"></canvas>

												<br>
												<div>
													<canvas id="myChart4"></canvas>
												  </div>
												<canvas id="myChart4" width="400" height="80"></canvas>



												<br><br><br>
												<h4 id ="history"> �м� ���</h4>
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
												<h3 id ="history"><strong>�ǻ� �ǵ��</strong></h3>
												<br>


												<h4 id="txt"><b>���� �Ұ�</b></h4>
												<br>
												
												<p>���� ������ ���� ��� �ɹ� ���� 72���� 26�� ���� ���� <u>���� ��ġ</u>�Դϴ�.
													�׷��� ���� ��ü �ɹ� �� �����丮 �м� ��� �ڴ� ���� �ް��� �ɹ� ���� Ƣ�� ��찡 ���Դϴ�
												�ڿ������� �����̱⵵ ������ �� ��ġ�� ���� ������ ���� ��Ʈ������ �ްų� �ῡ�� ��ô�̴�
											��찡 ���� ������ ����˴ϴ�. ���� �ּ� �ɹ�  ���� �ִ� �ɹڼ��� ���̰� ���� ���� ������ �� �κп� �����ϼž� �� �� �����ϴ�.
										<u>������ ������ ��ġ�� ������ �ʽ��ϴ�.</u> �׷��� �ǰ��� ������ ���� ���� �������� Ű��� ����� ��� ��õ�ص帳�ϴ�
									�� �� ������ ��ġ�� ��鼭 �ں��鼭 �ɹ� �� �����丮�� üũ�ϼ���												</p>



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
												<h3 id ="history">���鿡 ���� ��Ȱ����</h3>
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

								
									<br><br><br>	
								<section>


									<table>
										<tr id = "survey"><td>
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
type: 'line',
data: {
labels: ['3/1', '3/2', '3/3', '3/4', '3/5', '3/6','3/7'],
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
    