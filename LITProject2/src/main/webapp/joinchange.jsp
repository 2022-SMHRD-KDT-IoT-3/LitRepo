<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>

		<title>DreamCatcher</title>
		
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
			/* 프로필 영역 스타일 가운데 정렬 */
			#profile{
				margin: auto;
			text-align: center;
			margin-bottom: 10px;
			padding:30px;
			}


			#dateS{
				margin: auto;
			text-align: center;
			}
			.span1 {
				right: 10px;
	top: 10px;
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
#header{
	margin-top:30px;
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
						<h1 id="join">회원정보수정</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main">

						<!-- 프로필 영역 참고로 세로 영역 키우고 싶으면 height로 조정하기-->
						<div id="profile">
						<svg xmlns="http://www.w3.org/2000/svg" width="100s" height="100" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
						</div>
						
						<form>
							<table>
								<form action="">
									<!-- 첫번째 th -->
									<tr>
										<td align="right">아이디</td>
										<td>Lit</td>
										<td></td>
									</tr>
							 
							
									<tr>
										<td align="right">비밀번호</td>
										<td><input type="password" name="pw"></td>
										<td><button type="button" class="btn btn-secondary">비밀번호 변경</button></td>
										
									</tr>
									<tr>
										<td align="right">닉네임</td>
										<td><input type="text" name="nick"></td>
										<td><button type="button" class="btn btn-secondary">닉네임 변경</button></td>
									</tr>

									<tr>
										<td align="right">성별</td>
										<td>여자</td>
										<td></td>
										
									</tr>	

									
       								 <tr>
            							<td align="right" id="birthday">생일</td>
            							<td id="day">2022-03-22</td>
										</tr>

							</table>
						</form>

						<!-- Buttons -->
						
						<!--  마지막 버튼 -->
						<div>
							<div class="d-grid  col-8 mx-auto" id="gender">
							</br></br>
								<button type="button" class="btn btn-secondary btn-lg" id="btn1">회원 정보 수정</button>
								<br>
							</div>

							<div><br></div>
						
						</div>
						
					</div>
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