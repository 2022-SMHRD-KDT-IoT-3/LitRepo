<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>

		<title>DreamCatcher</title>
		
		<button type="button" class="btn btn-secondary">HOME</button>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
#gender{
	font-weight: bold;
         margin:10px;
			font-size : 30px;
	
		}
	#id{
			font-size:30px;
			font-weight: bold;
		}
		#id2 {
	margin-top: 30px;
	line-height: 2;
		}
		#join{
			font-size:50px;
			font-weight: bold;
	
		}
		#btn1{
			border: 3px solid #946697;

		}
		#exampleFormControlInput1{
		
			padding: 15px 15px;
			font-size:30px;
		
		}
		.btn-group-lg>.btn, .btn-lg {
    padding: 20px;
    font-size: 31px;
    border-radius: .5rem;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}
#inlineRadio1{
	font-size:30px;
}
.mb-3 {
    margin-bottom: 2rem!important;

}



		</style>
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

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
									<section>
										<div class="mb-3" id="id">
											<label for="exampleFormControlInput1" class="form-label">아이디</label>
											<input type="email" class="form-control" id="exampleFormControlInput1" placeholder>
										  </div>
										  <div class="mb-3" id="id">
											<label for="exampleFormControlInput1" class="form-label">비밀번호</label>
											<input type="email" class="form-control" id="exampleFormControlInput1" placeholder>
										  </div>
										  <div class="mb-3" id="id">
											<label for="exampleFormControlInput1" class="form-label">닉네임</label>
											<input type="email" class="form-control" id="exampleFormControlInput1" placeholder>
										  </div>
										  
										  
										  <div id="id">
											<label for="exampleFormControlInput1" class="form-label" id="id">성별</label>
											<br>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
												<label class="form-check-label" for="inlineRadio1">여자</label>
											  </div>
											  <div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
												<label class="form-check-label" for="inlineRadio2">남자</label>
											  </div>
											  <div class="mb-3" id="line">
												<label for="exampleFormControlInput1" class="form-label"  id="id2">생년월일</label>
												<input type="date" class="form-control" id="exampleFormControlInput1" id="line">
											  </div>
											  <div>
												<div class="d-grid  col-8 mx-auto" id="gender">
												</br></br>
													<button type="button" class="btn btn-secondary btn-lg" id="btn1">회원 가입</button>
													<br>
												</div>
											</div>
												
										  </section>
								<!-- Lists -->
									<section>
										
										<div class="row">
										
										</div>
										
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
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>