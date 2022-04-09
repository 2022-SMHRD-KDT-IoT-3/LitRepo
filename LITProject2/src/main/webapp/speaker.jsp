<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>Dream Catcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>


<!-- 추가한 곳 -->
<!-- 부트스트랩 추가부분 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

.carousel-inner #img1 {
	width: 100%;
	height: auto;
}

#img {
	width: 20px;
	height: 20px;
}

#bt {
	text-align: center;
	margin-left: 20px;
	margin-right: 20px;
	color: white;
}

#bt1 {
	color: black;
	background-color: whitesmoke;
}

/* 추가된 부분 */

/* 이미지 투명하게 하기 */
#img1 {
	opacity: 0.7;
	filter: alpha(opacity = 50);
}

.carousel-caption {
	font-size: large;
	color: #f7f7f7;;
	font-weight: bold;
	margin-bottom: 4px;
}

#txt1 {
	text-align: center;
	color: #f7f7f7;
	;
}

.btn-outline-secondary {
	background-color: transparent;
	box-shadow: inset 0 0 0 0px rgb(255 255 255/ 35%);
	color: #ffffff;
	border-radius: 8px;
	border-color: rgb(255 255 255/ 35%);
	padding-right: 10px;
	width: 80px;
	font-size: 12px;
	margin-left: 10px;
}

.btn btn-outline-secondary1 {
	background-color: transparent;
	box-shadow: inset 0 0 0 0px rgb(255 255 255/ 35%);
	color: #ffffff;
	border-radius: 8px;
	border-color: rgb(255 255 255/ 35%);
	padding-right: 10px;
	width: 80px;
	font-size: 12px;
	margin-left: 10px;
}

.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

#header {
	padding-top: 85px;
}

/* asmr 컨텐츠 */
.asmr {
	width: 400px;
	margin: auto;
	align-items: center;
}

#buttontest {
	border-style: none;
	transform-style: none;
}

.playbutton {
	align-items: center;
	height: 30px;
	text-align: center;
}

#buttonimg {
	width: 35px;
	height: 35px;
}
</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">
	<br>

	<!-- Wrapper -->
	<div id="wrapper">
		<span class="span1">
			<button type="button" onclick="location.href='main_login.jsp'"
				class="btn btn-outline-secondary"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='mypage.jsp'"
				style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='LogoutServiceCon.do'"
				style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
		</span>

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 style="color: #f7f7f7;">나의 플레이리스트</h1>
			<br> <br>
		</header>
		<br> <br> <br>
		<!-- Content -->
		<section id="content" class="main">

			<div class="asmr">
				<div id="carousel-example-generic" class="carousel slide">
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</ol>

					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<a href="" target="_blank"><img src="./img_asmr/asmr비.jpg"
								id="img1" value = "17"></a>
							<div class="carousel-caption">비</div>
						</div>

						<div class="item">
							<a href="" target="_blank"><img src="./img_asmr/asmr바람.jpg"
								id="img1"></a>
							<div class="carousel-caption">바람</div>
						</div>

						<div class="item">
							<a href="" target="_blank"><img src="./img_asmr/asmr장작.jpg"
								id="img1"></a>
							<div class="carousel-caption">장작</div>
						</div>

						<div class="item">
							<a href="" target="_blank"><img src="./img_asmr/asmr숲.jpg"
								id="img1"></a>
							<div class="carousel-caption">숲</div>
						</div>

						<div class="item">
							<a href=""> target="_blank"><img src="./img_asmr/asmr바다.jpg"
								id="img1"></a>
							<div class="carousel-caption">바다</div>
						</div>



					</div>
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</a>
				</div>


				<br> <br> <br> <br>
				<!-- 플레이 버튼 -->
		</section>


	</div>

	<section class="playbutton">

		<button type="button" onclick="" class="btn btn-outline-secondary"
			id="buttontest" style="font-family: 'Nanum Myeongjo', serif;">
			<img id="buttonimg" src="./img_speaker/left-arrow.png" alt="">
		</button>

		<button type="button" onclick="musicPlayer('17')" class="btn btn-outline-secondary"
			id="buttontest" style="font-family: 'Nanum Myeongjo', serif;">
			<img id="buttonimg" src="./img_speaker/play-button (3).png" alt="">
		</button>

		<button type="button" onclick="musicPlayer('p')" class="btn btn-outline-secondary"
			id="buttontest" style="font-family: 'Nanum Myeongjo', serif;">
			<img id="buttonimg" src="./img_speaker/next.png" alt="">
		</button>

		<button type="button" onclick="musicPlayer('+')" class="btn btn-outline-secondary"
			id="buttontest" style="font-family: 'Nanum Myeongjo', serif;">
			<img id="buttonimg" src="./img_speaker/plus (1).png" alt="">
		</button>
		<button type="button" onclick="" class="btn btn-outline-secondary"
			id="buttontest" style="font-family: 'Nanum Myeongjo', serif;">
			<img id="buttonimg" src="./img_speaker/minus.png" alt="">
		</button>

	</section>


	<br>
	<br>
	<br>
	<br>
	<br>
	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	
	<script type="text/javascript">
	
		function musicPlayer(musicList){
			
			$.ajax({
				type : 'post',
	            url : 'restoreMp31',
	            data : {
	                'select' : "music : " + musicList
	            },
	            success : function(check){
	            	
	            	if(check){
	                	
					} 
	            },
	            error : function(){
	                
	            }	
			
			
			
			})
			
			
			
			
			
			
			
		}
	
	</script>
	
	
	
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