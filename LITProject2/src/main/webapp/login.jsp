<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>

<title>DreamCatcher</title>

<button type="button" class="btn btn-secondary">Home</button>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<style>
#id1 {
	font-weight: bold;
	margin: auto;
	text-align: left;
	font-weight: bold;
}

#id2 {
	font-weight: bold;
	margin: auto;
	text-align: center;
	font-weight: bold;
}

#demo-name {
	font-weight: bold;
	margin: auto;
	text-align: center;
}

#content {
	background-color: rgb(255, 255, 255);
}

#login {
	font-weight: bold;
}

#btn {
	background-color: rgb(255, 255, 255)
}

#btn1 {
	border: 3px solid #946697;
}
</style>

</head>
<body class="is-preload">


	<form action="LoginServiceCon.do" method="post">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1 id="login">로그인</h1>
		</header>
		<br>
		<!-- Main -->
		<div id="main">
			<!-- Content -->
			<section id="content" class="main">
				<!-- Form -->
				<section>
					<h3 id="id1">아이디</h3>
					<br>
					<div class="mb-3">
						<input type="text" name="id" class="form-control"
							id="exampleFormControlInput1" placeholder="아이디를 입력해주세요">
					</div>
					<h3 id="id1">비밀번호</h3>
					<br>
					<div class="mb-3">
						<input type="password" name="pw" class="form-control"
							id="exampleFormControlInput1" placeholder="비밀번호를 입력해주세요">
					</div>
					<div>
						<div class="d-grid gap-3 col-8 mx-auto">
							</br>
							</br> <input type="submit" class="btn btn-secondary btn-lg" id="btn1">로그인
							</button>
							<button type="button" class="btn btn-secondary btn-lg" id="btn2">회원
								가입</button>
						</div>

						<div class="col-12"></div>
				</section>
				</form>
				<!-- Image -->


			</section>

		</div>

		<!-- Footer -->
		<footer id="footer">

			<section>

				<dl class="alt">
					<dt>Address</dt>
					<dd>광주 동구 예술길 31-15</dd>
					<dt>Phone</dt>
					<dd>(000) 000-0000 x 0000</dd>
					<dt>Email</dt>
					<dd>
						<a href="#">information@untitled.tld</a>
					</dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span
							class="label">Dribbble</span></a></li>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>