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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<style>
#gender {
	margin: 10px;
	font-size: 20px;
}
#header{
	margin-top:30px;
}
#id {
	font-size: 25px;
}

#id2 {
	margin-top: 25px;
	line-height: 2;
}

#join {
	/*위에 회원가입글씨*/
	font-size: 30px;
	font-weight: bold;
}

#exampleFormControlInput1 {
	padding: 15px 15px;
	font-size: 20px;
}

.btn-group-lg>.btn, .btn-lg {
	padding: 20px;
	font-size: 20px;
	border-radius: .5rem;
	
}
.form-control {
/*생년월일 년월일입력창*/
    display: block;
    width: 100%;
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 350;
    line-height: 1.5;
    color: #636363;
    background-color: rgba(222, 222, 222, 0.25);
    background-clip: padding-box;
    border: 1px solid #dddddd;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border-radius: .5rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}


#inlineRadio1 {
	/*여자남자 radio칸과 생년월일칸 사이각격*/
	font-size: 30px;
}

.mb-3 {
	/* 아이디 비밀번호 창간격*/
	margin-bottom: 1.5rem !important;
}
.span1 {
	/*홈로그인버튼 간격*/
	right: 10px;
	top: 10px;
	position: absolute;
	border-radius: 8px;
}
.btn-outline-secondary {
	/*위에 홈 로그인버튼*/
	background-color: transparent;
    box-shadow: inset 0 0 0 0px rgb(255 255 255 / 35%);
    color: #ffffff;
	border-radius: 8px;
	border-color:rgb(255 255 255 / 35%);
	padding-right:10px;
	width:80px;
	font-size:12px;
}
#main{
	background-color:rgb(255 255 255 / 50%);
}
.go{
	background-color: transparent;
    box-shadow: inset 0 0 0 1px #ffffff;
    color: #636363 !important;
}
</style>
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">
		<span class="span1">
			<button type="button"  onclick="location.href='main1.jsp'"
			 class="btn btn-outline-secondary" id="up">HOME</button>
		
	
			
			<button type="button" onclick="location.href='login.jsp'" class="btn btn-outline-secondary" id="up">로그인</button>
	
			

		</span>
		<!-- Header -->
		<header id="header">
			<h1 id="join">회원가입</h1>
			<br></br>
		</header>

		<!-- Main -->
		<div id="main">

			<!-- Content -->
			<section id="content" class="main">

				<!-- Text -->
				
				<form action="JoinServiceCon.do" method="post">
				
				<section>
					<div class="mb-3" id="id">
						<label for="exampleFormControlInput1" class="form-label">아이디</label>
						<input type="text" class="form-control"
							id="exampleFormControlInput1" name = "id" placeholder>
					</div>
					<div class="mb-3" id="id">
						<label for="exampleFormControlInput1" class="form-label">비밀번호</label>
						<input type="password" class="form-control"
							id="exampleFormControlInput1" name= "pw" placeholder>
					</div>
					<div class="mb-3" id="id">
						<label for="exampleFormControlInput1" class="form-label">닉네임</label>
						<input type="text" class="form-control"
							id="exampleFormControlInput1" name = "nickname" placeholder>
					</div>


					<div id="id">
						<label for="exampleFormControlInput1" class="form-label" id="id">성별</label>
						<br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name= "gender" id="inlineRadio1" value= "F">
							<label class="form-check-label" for="inlineRadio1">여자</label>
						</div>

						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name = "gender"  id="inlineRadio2" value= "M">
							<label class="form-check-label" for="inlineRadio2">남자</label>
						</div>
						<div class="mb-3" id="line">
							<label for="exampleFormControlInput1" class="form-label" id="id2">생년월일</label>
							<input type="date" class="form-control"
								id="exampleFormControlInput1" id="line" name = "birthday">
						</div>
						<div>
							<div class="d-grid  col-8 mx-auto" id="gender">
								</br>
								</br>
								<button type="button" class="go">회원가입</button>
								<br>
							</div>
						</div>
				</section>
				<!-- Lists -->
				
				</form>
				
				<section>

					<div class="row"></div>
		</div>




		<!-- Buttons -->




		</section>

	</div>

	<!-- Footer -->
	<footer id="footer">
		<section>

			<dl class="alt">
				<dt>Address</dt>

				<dd>광주 동구 예술길 31-15</dd>
				<dt>Phone</dt>
				<dd>000-0000 x 0000</dd>
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