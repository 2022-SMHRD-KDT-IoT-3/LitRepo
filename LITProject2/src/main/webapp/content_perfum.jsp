<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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


		#img {
			width: 20px;
			height: 20px;
		}
        .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
#id1{
	padding-top: 90px;
}
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">
        <span class="span1">
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='main1.jsp'" style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='mypage.jsp'" style="font-family: 'Nanum Myeongjo', serif;">Mypage</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
          
        </span>
		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">향초 추천</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
<!-- 이름 통일 -->
                <li><a href="content_main.jsp">Main</a></li>
                <li><a href="content_perfum.jsp">All</a></li>
				<li><a href="perfume_시트러스.jsp">Citrus</a></li>
				<li><a href="perfume_플로럴.jsp">Flower</a></li>
				<li><a href="perfume_프루티.jsp">Fruit</a></li>
				<li><a href="perfume_우디.jsp">Wood</a></li>

			</ul>
		</nav>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">

			<table>
				<!-- 시트러스 -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank"완료 -->
							<a
								href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img
									src="./img_perfume/시트러스라임.jpg" class="card-img-top" width="300px" height="200"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">머릿속까지 상큼한 라임의 향</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6226574087?itemId=12490607147&vendorItemId=79759305850&q=%EC%9E%90%EB%AA%BD%ED%96%A5%EC%B4%88&itemsCount=36&searchId=dc15ac1eb05b4226a0a9349d9931dc5e&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/시트러스 자몽.jpg" class="card-img-top" width="300px" height="200"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">톡하고 터지는 자몽 향</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815176&vendorItemId=70307610788&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=d3a92d1f93ef4c85bb78244116282e6a&rank=28&isAddedCart="target="_blank"><img src="./img_perfume/시트러스풀꽃.jpg" class="card-img-top" width="300px"
									height="200px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> 코 끝 속 은은한 풀꽃내음</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/1898819346?itemId=9957786562&vendorItemId=77240936710&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=29&isAddedCart="target="_blank"><img
									src="./img_perfume/시트러스라벤더.jpg" class="card-img-top" width="300px"
									height="200px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> 보라빛 향기 속 상큼함, 레몬라벤더</p>
							</div>
						</div>
					</td>
				</tr>
				<!-- 플로럴 -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815177&vendorItemId=70307610802&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=18&isAddedCart="target="_blank"><img
									src="./img_perfume/플로럴프리지아.PNG" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">봄에 오는 달콤한 프리지아</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6226573364?itemId=12490601612&vendorItemId=79759300142&q=%EC%9E%A5%EB%AF%B8%ED%96%A5%EC%B4%88&itemsCount=36&searchId=0b7ed3cab494472eb29cfbde87705241&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/플로럴장미.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">고혹적인 들장미향</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/4977953368?itemId=1025379210&vendorItemId=70996921337&sourceType=srp_product_ads&clickEventId=c30ce02b-2b89-48df-a315-06766f7c4408&korePlacement=15&koreSubPlacement=5&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=4&isAddedCart="target="_blank"><img
									src="./img_perfume/플로럴코튼.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">안기고 싶은 포근한 코튼향</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815169&vendorItemId=70307610733&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=22&isAddedCart="target="_blank"><img
									src="./img_perfume/플로럴웨딩부케.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">화사하고 깨끗한 웨딩 부케</p>
							</div>
						</div>
					</td>
				</tr>

				<!-- 프루티 -->

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img
									src="./img_perfume/프루티망고.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">달달한 망고 향기</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/1143442108?itemId=2114992305&vendorItemId=70113631144&q=%EC%82%AC%EA%B3%BC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=40cf064f3bb8486f83a183336f6a0ecb&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/프루티사과.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">설익은 풋사과 향기</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815184&vendorItemId=70307610864&pickType=COU_PICK&q=%EC%B2%B4%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=c2bc10a4daed4906b232dc5cda6136b6&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/프루티체리.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> 달콤하면서 진한 체리향</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/210587460?itemId=627609275&vendorItemId=4648074296&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=498476cd-62e5-4e4f-8b12-c40e1be6231c&korePlacement=15&koreSubPlacement=1&q=%EB%B2%A0%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=87e5318376844767a851e3390656b5fa&rank=0&isAddedCart="target="_blank"><img
									src="./img_perfume/프루티베리.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> 베리베리 스트로베리</p>
							</div>
						</div>
					</td>
				</tr>

				<!-- 우디 -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/197899009?itemId=10275077469&vendorItemId=77557460529&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=11&isAddedCart="target="_blank"><img
									src="./img_perfume/우디새벽.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">새벽 숲속 향기</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/4883105724?itemId=6359455422&vendorItemId=3537588185&sourceType=srp_product_ads&clickEventId=65ef8e3f-7293-4721-a25d-655c301af7b7&korePlacement=15&koreSubPlacement=6&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=5&isAddedCart="target="_blank"><img
									src="./img_perfume/우디달빛.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">달빛 속의 공원 산책</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815170&vendorItemId=70307610742&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=55193b71-616c-4a6e-82c6-65ed0163c8d0&korePlacement=15&koreSubPlacement=1&q=%EC%9C%A0%EC%B9%BC%EB%A6%AC%ED%88%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=fa8a442905734050a0f521f0f6ec05c7&rank=0&isAddedCart="target="_blank"><img
									src="./img_perfume/우디나무.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">초록빛의 나뭇잎</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/2175850043?itemId=3702539884&vendorItemId=71687821546&pickType=COU_PICK&q=%EC%9A%B0%EB%93%9C+%EC%BA%94%EB%93%A4&itemsCount=36&searchId=c617d17b717f4b7e8e1aab9ca9b778b9&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/우디우디.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">딥한 나무 껍질 향</p>
							</div>
						</div>
					</td>
				</tr>

			</table>



			<br>
			<br>
			<h4 id="p2">추가하고 싶은 향기가 있다면 알려주세요</h4>
			<p id="p2">사용자의 의견을 우선하여 컨텐츠를 추가하겠습니다</p>
			<br>

		</section>


	</div>

	<button type="button" id="gotop"><a href="#top">맨 위로</a></button>


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