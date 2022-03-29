<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>DreamCatcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>

<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

/* �޴� */
.menu {
	text-align: center;
}

#main {
	background-color: rgba(255, 255, 255, 0.89);
}

.minititle {
	font-size: 20px;
	background-color: #cfb9e6a1;
	text-align: center;
	height: 30px;
	font-weight: 500;
}

/* padding���� �����ٶ� ��� */
.padding {
	padding: 30px;
}

/* ����Ʈ �ٶ� ��� */
b {
	background-color: rgba(244, 165, 96, 0.596);
	display: inline;
	border-radius: 10px;
}

.point {
	text-align: center;
	background-color: rgba(189, 160, 185, 0.39);;
}


.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">
		<span class="span1">
			<button type="button" onclick="location.href='main1.jsp'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" onclick="location.href='LogoutServiceCon.do'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
		</span>

		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1>�ǻ� ���</h1>
			<br> <br>
		</header>

		<table class="menu">
			<tr>
				<td><a href="doctor main.jsp">Main</a></td>
				<td><a href="doctormine.jsp">���� �ǵ��</a></td>
				<td><a href="doctortip.jsp">�ǻ� ���</a></td>
				<td><a href="doctorcheck.jsp">�������üũ</a></td>
			</tr>
		</table>



		<br> <br>
		<h4 id="p2">�߰��ϰ� ���� ������ �ִٸ� �˷��ּ���</h4>
		<p id="p2">������� �ǰ��� �켱�Ͽ� �������� �߰��ϰڽ��ϴ�</p>
		<br>

	</div>

	<button type="button" id="gotop">
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

</body>

</html>