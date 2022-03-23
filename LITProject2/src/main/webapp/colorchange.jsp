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
#p1 {
	margin: auto;
	text-align: center;
	font-weight: bold;
	font-size: 20px;
}

#p2 {
	margin: auto;
	text-align: center;
	font-size:14px;
}
.image.main{
	display:inline;
	margin-left:auto;
	margin-right:auto;
}
.row > * {
    padding: 0 0 0 4em;
	background-color:rgb(237, 224, 250);
	
}
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}


#main{
	margin: auto;
text-align: center;
}
#color{
		margin: auto;
		text-align: center;
			padding:20px;
			width:300px;
			height:300px;
		
}
#p3{
	font-size:2rem;
	color:#FFFFFF;
}
#header{
padding-top:100px;

}
#main{
	background-color:rgb(255 255 255 / 50%);
}
</style>

</head>
<body class="is-preload">
	<span class="span1">
	
			<button type="button" class="btn btn-outline-secondary">HOME</button>
			<button type="button" class="btn btn-outline-secondary">로그아웃</button>
	
	</span>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1 id="id1">색상 조절</h1>
			<br>
			<p>원하시는 조명 색상으로 변경해드립니다</p>
		</header>

		<!-- Main -->
		<div id="main">
			<!-- Content -->
			<section id="content" class="main">
			
				<form action="#">
					<input type="color" name="color" id="color">
				</form>
				<p id="p3">색상을 선택해주세요</p>
		
				</div>
		

</div>
		</div>
	</section>
		<!-- Footer -->
		<footer id="footer">
			<section>
				<br> <br>
				<br>
				<p id="p2">오늘도 당신의 숙면을 위해 노력하겠습니다. 편안한 밤 되세요</p>
				<ul class="actions">
				</ul>
			</section>
			<section></section>
		</footer>
		<footer id="footer">
			<section>

				<dl class="alt">
					<dt>Address</dt>
			
					<dd>광주 동구 예술길 31-15</dd>
					<dt>Phone</dt>
					<dd>000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd><a href="#">information@untitled.tld</a></dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
				</ul>
			</section>
		
		</footer>

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