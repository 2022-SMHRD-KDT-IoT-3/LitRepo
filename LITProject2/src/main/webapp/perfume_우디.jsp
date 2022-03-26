<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
	<title>recommand</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>

	<style>
		@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
	
	
	#img{
		width: 20px;
		height: 20px;
	}
	 #bt {
            text-align: center;
            margin-left: 22px;
            margin-right: 20px;
            color: white;
            font-size : 17px;
        }
	
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- 맨위로 버튼 누를때 이동해올 곳 -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">Wood</h1>
			<br>
			<br>
		</header>


		<table>
            <tr align="center">
                <td>
                	<a id ="bt" href = "content_main.jsp">Main</a>
                    <a id="bt" href="content_perfum.jsp">All</a>
                    <a id="bt" href="perfume_시트러스.jsp">Citrus</a>
                    <a id="bt" href="perfume_플로럴.jsp">Flower</a>
                    <a id="bt" href="perfume_프루티.jsp">Fruit</a>
                    <a id="bt" href="perfume_우디.jsp">Wood</a>
                </td>
            </tr>
        </table>


		<!-- Content -->
		<section id="content" class="main">
			<table>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank"완료 -->
							<a href="https://www.coupang.com/vp/products/197899009?itemId=10275077469&vendorItemId=77557460529&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=11&isAddedCart="target="_blank"><img src="./img_perfume/우디새벽.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">새벽 숲속 향기</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/4883105724?itemId=6359455422&vendorItemId=3537588185&sourceType=srp_product_ads&clickEventId=65ef8e3f-7293-4721-a25d-655c301af7b7&korePlacement=15&koreSubPlacement=6&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=5&isAddedCart="target="_blank"><img src="./img_perfume/우디달빛.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">달빛 속의 공원 산책</p>
							</div>
						  </div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815170&vendorItemId=70307610742&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=55193b71-616c-4a6e-82c6-65ed0163c8d0&korePlacement=15&koreSubPlacement=1&q=%EC%9C%A0%EC%B9%BC%EB%A6%AC%ED%88%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=fa8a442905734050a0f521f0f6ec05c7&rank=0&isAddedCart="target="_blank"><img src="./img_perfume/우디나무.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">초록빛의 나뭇잎</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/2175850043?itemId=3702539884&vendorItemId=71687821546&pickType=COU_PICK&q=%EC%9A%B0%EB%93%9C+%EC%BA%94%EB%93%A4&itemsCount=36&searchId=c617d17b717f4b7e8e1aab9ca9b778b9&rank=1&isAddedCart="target="_blank"><img src="./img_perfume/우디우디.jpg" class="card-img-top" width="300px" height="220"></a>
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