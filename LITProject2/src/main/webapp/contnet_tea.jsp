<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>recommand</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	
	<style>

		#p1{
			margin: auto;
			text-align: center;
			font-weight: bold;
			font-size: 17px;
			color: rgba(15, 15, 15, 0.705);
		}

		#p2{
			margin: auto;
			text-align: center;
		}

		#tr2{
			margin-top: 10pxs;
		}

		#minit1{
			background-color :rgba(253, 253, 252, 0.767);
			border-radius: 40px;
		}

		
		#gotop{
			left: 10px;
			bottom: -50px;
			position: relative;
		}
        .span1 {
				right: 10px;
	top: 10px;
	position: absolute;
}
#id1{
	padding-top: 40px;
}

	</style>

	</head>
	<body class="is-preload">

		<!-- Wrapper -->
        <div id="wrapper">
            <span class="span1">
    
                <button type="button" onclick="location.href='main1.jsp'" class="btn btn-outline-secondary">HOME</button>
                <button type="button" onclick="location.href='mypage.jsp'" class="btn btn-outline-secondary">마이페이지</button>
                <button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary">로그아웃</button>
            </span>
				
				<!-- 맨위로 버튼 누를때 이동해올 곳 -->
				<h1 id ="top"></h1>
				
				<!-- Header -->
					<header id="header">
						<h1 id="id1">차 추천</h1>
						<br>
						<p>숙면에 도움을 줄 수 있는 차를 추천해드립니다</p>
					</header>


						<!-- Content -->
							<section id="content" class="main">
						
								<table>
									<tr>
										<td id="minit1">
											<b></b><p id ="p1">캐모마일</p></b>
											<br>
											<span class="image main">
												<a href="https://www.coupang.com/vp/products/2311561?itemId=5135119583&vendorItemId=74540421394&q=%EC%BA%90%EB%AA%A8%EB%A7%88%EC%9D%BC+%ED%8B%B0&itemsCount=36&searchId=a089ee60120b40eeb3c08e5d018c2996&rank=1&isAddedCart="><img src="./img_tea/cup-g9941dea76_640.jpg" /></a>
												</span>
										</td>
										</tr>

										<!-- 빈칸용도 -->
										<tr>
											<td><br></td>
										</tr>
										
									
										<tr>
										<td id="minit1">
											<br>
											<b><p id ="p1">꿀차</p></b>
											<br>
											<span class="image main">
									
												<a href="https://www.coupang.com/vp/products/1082648695?itemId=2035763559&vendorItemId=70035188390&q=%EA%BF%80%EC%B0%A8&itemsCount=36&searchId=c666f34a869f4734b876004f388d7c98&rank=3&isAddedCart="><img src="./img_tea/honey-gbba565be5_640.jpg" alt="" /></a>
												</span>
											</tr>
										
										<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
											<br>
											<b><p id ="p1">대추</p></b>
											<br>
											<span class="image main">
												<a href="https://www.coupang.com/vp/products/1163090667?itemId=2139971606&vendorItemId=70138372121&sourceType=srp_product_ads&clickEventId=9f3332eb-8e86-4abf-9c71-76266e31e3ca&korePlacement=15&koreSubPlacement=1&q=%EB%8C%80%EC%B6%94%EC%B0%A8&itemsCount=36&searchId=aefc68c5142943dfa46476afae729081&rank=0&isAddedCart=">
													<img  src="./img_tea/xinjiang-g57e9c2dc5_640.jpg" alt="" /></a></span>
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
											<td id="minit1">
												<br>
												<b><p id ="p1">라벤더</p></b>
												<br>	
												<span class="image main">
													<a href="https://www.coupang.com/vp/products/493119?itemId=1437350&vendorItemId=3001386049&q=%EB%9D%BC%EB%B2%A4%EB%8D%94%EC%B0%A8&itemsCount=36&searchId=ffc7bb23a1844b6091f2c742238a8f72&rank=3&isAddedCart=">
													<img src="./img_tea/lavenders-g271c7eb9d_640.jpg" alt="" /></a></span>
											</tr>

											<!-- 빈칸용도 -->
											<tr>
												<td><br></td>
											</tr>

										
											<tr>
												<td id="minit1">
													<br>
												<b><p id ="p1">오미자</p></b>
												<br>
												<span class="image main">
													<a href="https://www.coupang.com/vp/products/5530815599?itemId=8678554728&vendorItemId=75965702916&sourceType=srp_product_ads&clickEventId=3adb0d0a-af3e-471f-b7f4-7f7a083e3324&korePlacement=15&koreSubPlacement=5&q=%EC%98%A4%EB%AF%B8%EC%9E%90%EC%B0%A8&itemsCount=36&searchId=f7c15876e7ef468f9d9f58ecf9c7e01d&rank=4&isAddedCart=">
													<img src="./img_tea/omija-g924625f3c_640.jpg" alt="" /></a></span>
												</tr>

									<!-- 전체 테이블 영역 마지막 -->
									</tr>
								</table>



								<br>
								<br>
								<h4 id = "p2">추가하고 싶은 차가 있다면 알려주세요</h4>
								<p id = "p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
								<br>
							
							</section>

							
						</div>

							<button type="button" id = "gotop"><a href="#top">맨 위로</a></button>
						
						
						<br><br><br><br><br>
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