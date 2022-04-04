<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>

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
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

			#gender {
				margin: 10px;
				font-size: 20px;
			}

			#id {
				font-size: 25px;
			}

			#id2 {
				margin-top: 20px;
				line-height: 2;
			}

			#join {
				/*위에 회원가입글씨*/
				font-size: 40px;
				font-weight: bold;
			}

			#exampleFormControlInput1 {
				/*생년월일 입력창크기와 색상*/
				padding: 15px 15px;
				font-size: 20px;
				border-color: rgba(255, 255, 255, 0.35);
			}

			.btn-group-lg>.btn,
			.btn-lg {
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
				background-color: rgba(255, 255, 255, 0.075);
				border-color: rgba(255, 255, 255, 0.35);
				background-clip: padding-box;
				border: 1px solid #dddddd;
				-webkit-appearance: none;
				-moz-appearance: none;
				appearance: none;
				border-radius: .5rem;
				transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
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
				border-color: rgb(255 255 255 / 35%);
				padding-right: 10px;
				width: 80px;
				font-size: 12px;
			}

			#main {
				background-color: rgb(255 255 255 / 0%);
			}

			#main label {
				color: #FFFFFF;
			}

			.go {
				background-color: transparent;
				box-shadow: inset 0 0 0 1px #ffffff;
				color: #FFFFFF
			}

			#main input[type="submit"],
			#main input[type="reset"],
			#main input[type="button"],
			#main button,
			#main .button {
				background-color: transparent;
				box-shadow: inset 0 0 0 1px #dddddd;
				color: #ffffff !important;
			}

			#main input[type="checkbox"]+label,
			#main input[type="radio"]+label {
				color: #ffffff;
			}

			#main input,
			#main select,
			#main textarea {
				color: #ffffff;
			}

			input[type="submit"],
			input[type="reset"],
			input[type="button"],
			button,
			.button {
				background-color: transparent;
				box-shadow: inset 0 0 0 1px rgb(255 255 255 / 35%);
				color: #ffffff !important;
				border-radius: 8px;
				font-size: 1.6rem;
				font-weight: 300;
				height: 2.75em;
				line-height: 2.75em;
				border: 1px solid;
			}

			#main input[type="text"],
			#main input[type="password"],
			#main input[type="email"],
			#main select,
			#main textarea {
				background-color: rgba(255, 255, 255, 0.075);
				border-color: rgba(255, 255, 255, 0.35);
			}

			.form-label {
				font-size: 19px;
				font-weight: bold;
			}

			.btn-secondary {
				border-color: rgb(225 225 225 / 35%);
			}

			#first {
				border-style: hidden;
			}
			#main input[type="submit"], #main input[type="reset"], #main input[type="button"], #main button, #main .button {
    background-color: transparent;
    box-shadow: inset 0 0 0 0px #ffffff;
    color: #ffffff !important;
    }
table td {
    padding: 0.31em;
}

			
		</style>
	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

		<!-- Wrapper -->
		<div id="wrapper">
			<span class="span1">
				<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary"
					id="up">HOME</button>



				<button type="button" onclick="location.href='login.jsp'" class="btn btn-outline-secondary"
					id="up">로그인</button>



			</span>
			<!-- Header -->
			<br>
			<br>
			<header id="header">
				<h1 id="join">회원가입</h1>
			</header>
			<!-- Main -->
			<div id="main">

				<!-- Content -->
				<section id="content" class="main">

					<!-- Text -->

					<form action="JoinServiceCon.do" method="post">


						<section>
							<div class="mb-3" id="id">
								<table id="first" style="margin-bottom:51px;">
									<tr>
										<td><label for="exampleFormControlInput1"
												class="form-label">아이디</label>
										<td><input type="text" class="form-control" id="exampleFormControlInput1"
												name="id" style="width:180px;"></td>
										<td><button type="button" class="btn btn-secondary"
												style="width:70px" onclick="idCheck()">확인</button></td>
							</div>
							</table>
						</section>


						<div class="mb-3" id="id">
							<table id="first" style="margin-top:-52px;" >
							<tr>
							<td><label for="exampleFormControlInput1" class="form-label" style="font-size:15px">비밀번호</label></td>
							<td><input type="password" class="form-control" id="exampleFormControlInput1" name="pw"
								placeholder></td>
							</tr>
						</table>
						</div>
						<br>
						<div class="mb-3" id="id">
							<table id="first" style="margin-top:-75px;">
							<tr>
							<td><label for="exampleFormControlInput1" class="form-label">닉네임</label></td>
							<td><input type="text" class="form-control" id="exampleFormControlInput1" name="nickname"
								placeholder></td>
							</tr>
							</table>
						</div>
						<br>

						<div id="id">
							<table id="first" style="margin-top:-76px;">
							<td><label for="exampleFormControlInput1" class="form-label" id="id" style="font-size:19px;">성별</label>
							<br>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="F">
								<label class="form-check-label" for="inlineRadio1" style="font-size:20px;">여자</label>
							</div>

							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="M">
								<label class="form-check-label" for="inlineRadio2" style="font-size:20px;">남자</label>
							</td>
							</table>
							</div>
							
							<div class="mb-3" id="line">
								<table id="first" style="margin-top:-52px">
									<td>
								<label for="exampleFormControlInput1" class="form-label" id="id2">생년월일</label>
								<input type="date" class="form-control" id="exampleFormControlInput1" id="line"
									name="birthday">
									<br>
								</table>
							</div>

								<div class="d-grid  col-8 mx-auto" id="gender">
									</br>
									</br>
									<button type="submit" class="go">회원가입</button>
									<br>
								</table>
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

				<dl class="alt" style="color:white;">
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
		 <script>
        function idCheck(){
        	if($('input[name=id]').val() != ''){
        	
            $.ajax({
                type : 'get',
                url : 'idCheckServiceCon.do',
                data : {
                    'id' : $('input[name=id]').val()
                },
                success : function(check){
                	
                	if(check == 'true'){
                    alert('아이디가 중복되었습니다.')
					} else {
					alert('중복되는 아이디가 없습니다.')
					}
                    
                },
                error : function(){
                    

                }

            })
        	} else{
        		
        		alert('정확한 아이디를 입력해주십시오.')
        		
        	}

        }



    </script>
		
		
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>
	</body>

	</html>