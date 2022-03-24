<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>

		<title>DreamCatcher</title>
		
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
			
		#main1{
			background-color: rgba(246, 242, 247, 0.63);
		}

		#txt{
			color: white;
			text-align: center;
			background-color: rgb(187, 155, 200);
			height: 30px;
		}


		#txt2{
			color: black;
		}

		#num{
			background-color: rgba(205, 171, 209, 0.856);
			text-align: center;
		}

		#num2{
			text-align: center;
			background-color: rgba(214, 178, 211, 0.541);
		}

		#ptxt{
			background-color: rgba(240, 201, 225, 0.288);
			text-align: center;
		}
		.span1 {
				right: 20px;
	top: 15px;
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
#join{
	padding-top: 40px;
}
		</style>

</head>
<span class="span1">
	
</span>
<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				<div id="wrapper">
					<span class="span1">
						<button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary">HOME</button>
					<button type="button" class="btn btn-outline-secondary" onclick="location.href='login.jsp'">로그인</button>
					</span>
				<!-- Header -->
					<header id="header">
						<h1 id="join">수면 설문조사</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main1">
					<section id="txt">질문</section>
						<form>
							<table>
								<form action="">
									<tr>
										<td colspan="5">
											<h6 id="txt2">지난 한달 동안, 당신은 아래의 이유로 잠자는 데 얼마나 자주 문제가 있었습니까?</h6>
									</td>
									</tr>
									
									<tr>
										<td></td>
										<td><b>없다</b></td>
										<td><b>주 1회 미만</b></td>
										<td><b>주 1~2회</b></td>
										<td><b>주 3회 이상</b></td>
									</tr>
									<tr>
										<td id = "num">1</td>
										<td colspan="4"> 
											취침 후 30분 이내에 잠 들 수 없었다
										</td>
									</tr>
									<tr>
										<td id = "num">2</td>
										<td colspan="4">
											한밤중이나 새벽에 깼다
										</td>
									</tr>
									<tr>
										<td id = "num">3</td>
										<td colspan="4">
											화장실에 가려고 일어나야 했다
										</td>
									</tr>
									<tr>
										<td id = "num">4</td>
										<td colspan="4">
											편안하게 숨 쉴 수가 없었다
										</td>
									</tr>
									<tr>
										<td id = "num">5</td>
										<td colspan="4">
											기침을 하거나 시끄럽게 코를 골았다
										</td>
									</tr>
									<tr>
										<td id = "num">6</td>
										<td colspan="4">
											너무 춥다고 느껴졌다
										</td>
									</tr>
									<tr>
										<td id = "num">7</td>
										<td colspan="4">
											너무 덥다고 느껴졌다
										</td>
									</tr>
									<tr>
										<td id = "num">8</td>
										<td colspan="4">
											나쁜 꿈을 꾸었다
										</td>
									</tr>
									<tr>
										<td id = "num">9</td>
										<td colspan="4">
											잠들기 위해 얼마나 자주 약을 복용했습니까?
										</td>
									</tr>
									<tr>
										<td id = "num">10</td>
										<td colspan="4">
										사회활동을 하는 동안 자주 졸음을 느꼈습니까?
										</td>
									</tr>
									<tr>
										<td id = "num">11</td>
										<td colspan="4">
										당신이 일에 집중하는데 문제가 있었나요?
										</td>
									</tr>


							
							</table>
						</form>

						<br>
						<section id="txt">결과 해석란</section>
						<br>
						<div id="num2">없다 : 0점</div><br>
						<div id="num2">주 1회 미만 : 1점</div><br>
						<div id="num2">주 1~2회 : 2점</div><br>
						<div id="num2">주 3회 이상 : 3점</div><br>

						<br>
						<section id="txt">결과</section>
						<br>
						
						<div align = "center">최소 0 ~ 최대 33점</div>
						
						<br>
						<table>
							<tr><td id="num">
								0 ~ 7점	
							</td>

							<td align="center">정상 상태입니다</td>

							<tr><td id="num">
								8 ~ 13점	
							</td>
						<td align="center">숙면을 취하지 못하는 상태로 무언가에 의해 수면의 질과 양이 방해받고 있습니다</td></tr>
						
						<tr>
							<td id="num">14 ~ 24점</td>
							<td align="center">수면장애로 장기화된다면 일상생활에 지장을 받을 수 있습니다</td>
						</tr>

						<tr>
							<td id="num">25점 이상</td>
							<td align="center">적극적인 치료가 필요합니다</td>
						</tr>
					</table>
				
						
						
					</div>
					<br><br>
					
					<p id="ptxt">"수면의 질을 평가할 수 있는 한국판 피처버그 수면검사의 일부문항을 가져왔습니다.
						자세한 상담과 결과는 병원을 통해서 검사할 수 있습니다"
					</p>
					<br>
					<br>
					<br>
					
	
				
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