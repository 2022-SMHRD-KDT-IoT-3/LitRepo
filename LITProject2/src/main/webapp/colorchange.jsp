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

		<style>
			@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
			@import url('https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap');

			#p1 {
				margin: auto;
				text-align: center;
				font-weight: bold;
				font-size: 20px;
			}

			#p2 {
				margin: auto;
				text-align: center;
				font-size: 14px;
			}

			.image.main {
				display: inline;
				margin-left: auto;
				margin-right: auto;
			}

			.row>* {
				padding: 0 0 0 4em;
				background-color: rgb(237, 224, 250);

			}

			.span1 {
				right: 10px;
				top: 10px;
				position: absolute;
			}


			#main {
				margin: auto;
				text-align: center;
			}

			#color {
				margin: auto;
				text-align: center;
				padding: 20px;
				width: 300px;
				height: 300px;

			}

			#p3 {
				font-size: 2rem;
				color: #FFFFFF;
			}

			#header {
				padding-top: 100px;

			}

			#main {
				background-color: rgb(255 255 255 / 50%);
			}
			#wrap{
    margin-left:45px;
    padding-top:50px;
    list-style: none;
    text-decoration: none;
}
.mainMenu{
    width: 250px;
    display: block;
    overflow: hidden;
}
.nav{
    overflow: hidden;
	border-bottom:1px solid rgba(117, 49, 134, 0.3);
	background-color:rgba(117, 49, 134, 0.3);
}
.btnc {
    display: block;
    padding: 5px;
    color: #fff;
    position: relative;
    font-size: 23px;
    border-style: none;
}
.subMenu{
    background: rgb(255, 255, 255);
    overflow: hidden;
    transition: max-height 0.7s;
    max-height: 0;
}
.subMenu a{
    display: block;
    padding: 15px 20px;
    color: #222;
    font-size: 19px;
    border-bottom: 1px solid #eaeaea;
    position: relative;
	margin-left:80px;
	margin-top:-90px;
    
}
.subMenu a:after{
    content: '';
    opacity: 0;
    transition: opacity 0.3s;

}
.subMenu a:hover{
    background: #fafafa;
   transition: all 0.3s;
    border-bottom: 1px solid #c8c8c8;
}
.subMenu a:last-child{
    border:none;
}
.nav:target .subMenu{
    max-height: 10em;
}
#on {
    -moz-appearance: none;
    -webkit-appearance: none;
    -ms-appearance: none;
    appearance: none;
    -moz-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    -webkit-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    -ms-transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    transition: background-color 0.2s ease-in-out, color 0.2s ease-in-out;
    border-radius: 30px;
    border: groove;
    cursor: pointer;
    display: inline-block;
    font-weight: 300;
    height: 2.75em;
    line-height: 1.75em;
    min-width: 8.25em;
    padding: 0 1.5em;
    text-align: center;
    text-decoration: none;
    white-space: nowrap;
}

		</style>

	</head>

	<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;"></body>
	<span class="span1">
		<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
		<button type="button" onclick="location.href='LogoutServiceCon.do'"
			style="font-family: 'Nanum Myeongjo', serif;" class="btn btn-outline-secondary">????????</button>
	</span>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<h1 id="id1">???? ????</h1>
			<br>
			<p style="font-size: 1.3em;">???????? ???? ???????? ??????????????</p>
		</header>

		<!-- Main -->
		<div id="main">
			<!-- Content -->
			<section id="content" class="main">

			
				


				<form action="restoreColor" method = "post">

					<input type="color" name="color" id="color">
					
					<input type="submit" style="margin-top:30px;color: #FFFFFF !important;" value="?? ????">
				</form>
				<p id="p3">?????? ????????????</p>

		</div>


	</div>
	<br>
	<br>
	<h2 style="font-size: 27px;
    text-align: center;
    background-color: #9873a9;">?????? ????</h2>
	</section>
	<div id="wrap" style="text-align:center;">
        <ui class="mainMenu" style="width:400px;">
            <li class="nav" id="account">
                <a href="#account" class="btnc">????</a>
                <div class="subMenu">
					<div style="
    font-weight: bold;
    background-color: #ff0000;
    width: 80px;
    height: 80px;
    border-color: #f5ebeb;
    border-style: double;
    border-width: 10px;
    margin-left: 5px;
    margin-top: 6px;
">
    #ff0000
</div>
                    <a href="">?????? ???? ?????? ??????????. ???????????? ???????? ???????? ????</a>
                </div>
            </li>
            <li class="nav" id="about">
                <a href="#about" class="btnc">????</a>
                <div class="subMenu">
					<div style="
					font-weight: bold;
					background-color: #ff8800;
					width: 80px;
					height: 80px;
					border-color: #f5ebeb;
					border-style: double;
					border-width: 10px;
					margin-left: 5px;
					margin-top: 6px;
				">
					#ff8800
				</div>
                    <a href="">???? ?????? ???????? ?? ???? ???????? ?????? ????????. ???????? ???????? ???????? ????</a>
                </div>
            </li>
            <li class="nav" id="support">
                <a href="#support" class="btnc">????</a>
                <div class="subMenu">
						<div style="
						font-weight: bold;
						background-color: #ffe600;
						width: 80px;
						height: 80px;
						border-color: #f5ebeb;
						border-style: double;
						border-width: 10px;
						margin-left: 5px;
						margin-top: 6px;
					">
						#ffe600
					</div>
                    <a href="">???? ?????? ?????? ?????? ????. ?????????? ???? ?????? ?? ????</a>
                </div>
            </li>
            <li class="nav" id="green">
                <a href="#green" class="btnc">????</a>
				<div class="subMenu">
					<div style="
						font-weight: bold;
						background-color: #178120;
						width: 80px;
						height: 80px;
						border-color: #f5ebeb;
						border-style: double;
						border-width: 10px;
						margin-left: 5px;
						margin-top: 6px;
					">
						#178120
					</div>
                    <a href="">?????? ?????? , ?????? ?????????? ???? ???? ,???????? ?????? ?????? ???????? ?????????? ????</a>
                </div>
            </li>
			<li class="nav" id="blue">
                <a href="#blue" class="btnc">????</a>
				<div class="subMenu">
					<div style="
						font-weight: bold;
						background-color: #2600ff;
						width: 80px;
						height: 80px;
						border-color: #f5ebeb;
						border-style: double;
						border-width: 10px;
						margin-left: 5px;
						margin-top: 6px;
					">
						##2600ff
					</div>
                    <a href="">???? ???? , ?????????? ???? , ?????? ???????? ???? ?????? ???? ?????? ?????????? ????????.</a>
                </div>
            </li>
			<li class="nav" id="purple">
                <a href="#purple" class="btnc">????</a>
				<div class="subMenu">
					<div style="
						font-weight: bold;
						background-color: #bb1dae;
						width: 80px;
						height: 80px;
						border-color: #f5ebeb;
						border-style: double;
						border-width: 10px;
						margin-left: 5px;
						margin-top: 6px;
					">
						#bb1dae
					</div>
                    <a href="">?????? ???? , ?????????? ?????? ???? ???????? ?????????? ???????? ???????? ???????? ????</a>
                </div>
            </li>
			<li class="nav" id="pink">
                <a href="#pink" class="btnc">????</a>
				<div class="subMenu">
					<div style="
						font-weight: bold;
						background-color: #f172bc;
						width: 80px;
						height: 80px;
						border-color: #f5ebeb;
						border-style: double;
						border-width: 10px;
						margin-left: 5px;
						margin-top: 6px;
					">
						#f172bc
					</div>
                    <a href="">??????,??????,???????? ?????????? ?????? ???? ?????? ?????? ????????.</a>
                </div>
            </li>
			<li class="nav" id="white">
                <a href="#white" class="btnc">????</a>
				<div class="subMenu">
					<div style="
						font-weight: bold;
						background-color: #ffffff;
						width: 80px;
						height: 80px;
						border-color: #000000;
						border-style: double;
						border-width: 9px;
						margin-left: 8px;
						margin-top: 10px;
				
					">
						#ffffff
					</div>
                    <a href="">???? ???????? ???? ??, ?????? ?????? ??, ???????? ?????? ???? ?? ????</a>
                </div>
            </li>
        </ui>
    </div>
    <br>
    <br>

    <h2 style="font-size: 27px;
    text-align: center;
    background-color: #9873a9;">????????</h2>
    <br>
    <br>
    			<section id="content" class="main">
			
				<img src="????/????????.jpg" width="400" style="margin-left: 40px;">
					<a href=""></a>
<div>
<button type="button" onclick = "warmerOnOff('On')"class="btn btn-outline-secondary" style="font-family: 'Nanum Myeongjo', serif;margin-left: 115px;margin-top: 30px;font-size: 15px;font-weight: bold;" id="on">ON</button>
			    <button type="button" onclick ="warmerOnOff('Off')" class="btn btn-outline-secondary" style="font-family: 'Nanum Myeongjo', serif;font-size: 15px;font-weight: bold;" id="on">OFF</button>
 </div>
	<!-- Footer -->
	<footer id="footer">
		<section>
			<br> <br>
			<br>
			<p id="p2" style="font-size:1em;">?????? ?????? ?????? ???? ??????????????. ?????? ?? ??????</p>
			<ul class="actions">
			</ul>
		</section>
		<section></section>
	</footer>
	<footer id="footer">
		<section>

			<dl class="alt">
				<dt>Address</dt>

				<dd>???? ???? ?????? 31-15</dd>
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
	
	<script type="text/javascript">
		function warmerOnOff(State){
			$.ajax({
				type : 'post',
	            url : 'restoreWarmer',
	            data : {
	                'warmerState' : "warmer" + State
	            },
	            success : function(check){
	            	
	            	if(check){
	                	alert("????")
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

	</body>

	</html>