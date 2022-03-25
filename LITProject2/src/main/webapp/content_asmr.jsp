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
			@import url('https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap');

		#img {
			width: 20px;
			height: 20px;
		}
        .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
#id1{
	padding-top: 110px;
}
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>

	<!-- Wrapper -->
	<div id="wrapper">
        <span class="span1">
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">Mypage</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>

        

        </span>
		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">ASMR</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
			<!-- �߰� -->
				<li><a href="content_main.jsp">Main</a></li>
                <li><a href="content_perfum.jsp">����</a></li>
				<li><a href="content_meditation.jsp">���</a></li>
				<li><a href="content_asmr.jsp">ASMR</a></li>
				<li><a href="content_living.jsp">���� ��ǰ</a></li>
				<li><a href="content_tea.jsp">��</a></li>

			</ul>
		</nav>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">
			<table>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank" �Ϸ� -->
							<a href="https://www.youtube.com/watch?v=HrO74lj5QBs"target="_blank"><img src="./img_asmr/asmr��.jpg"
									class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">��</p>
							</div>
						</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=KKi2qiuZZWQ"target="_blank"><img src="./img_asmr/asmr�ٶ�.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">�ٶ�</p>
							</div>
						</div>
					</td>

				</tr>

				<tr>
					<td>
					<div class="card" style="width: 18rem;">
						<a href="https://www.youtube.com/watch?v=6ZSbWQkIYsU"target="_blank"><img src="./img_asmr/asmr����.jpg" class="card-img-top" width="300px" height="220"></a>
						<div class="card-body">
							<p class="card-text" style="text-align: center">����</p>
						</div>
					</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=lYJ17n_oUkA"target="_blank"><img src="./img_asmr/asmr��.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">��</p>
							</div>
						</div>
					</td>
					
				</tr>

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=zp789sRyQKg"target="_blank"><img src="./img_asmr/asmr�ٴ�.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">�ٴ�</p>
							</div>
					</td>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.youtube.com/watch?v=xym-gmq_rlw"target="_blank"><img src="./img_asmr/asmrī��.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center">ī��</p>
							</div>
						</div>
					</td>
				</tr>



			</table>




			<br>
			<br>
			<h4 id="p2">�߰��ϰ� ���� ASMR �ִٸ� �˷��ּ���</h4>
			<p id="p2">������� �ǰ��� �켱�Ͽ� �������� �߰��ϰڽ��ϴ�</p>
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