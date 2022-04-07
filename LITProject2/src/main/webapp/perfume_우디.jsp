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
	padding-top: 95px;
}
        #bt {
            text-align: center;
            margin-left: 20px;
            margin-right: 20px;
            color: white;
        }
        .row{
           max-width:100%;height:auto;
        }
       .row > * {
    padding: 0 6.5em 0 3.5em;
}
@media screen and (max-width: 736px){}
.row > * {
    padding: 0 6.5em 0 3.5em;
}

.living{
    width:350px;
    height:250px;
}
    
body, input, select, textarea {
    font-weight: 300;
    line-height: 2;
}
#p2{
text-align:center;
}
	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">
            <span class="span1">
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='main_login.jsp'" style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='mypage.jsp'" style="font-family: 'Nanum Myeongjo', serif;">마이페이지</button>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">로그아웃</button>
    
            
    
            </span>
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
                    <a id="bt" href="content_main.jsp">Main</a>
                    <a id="bt" href="content_perfum.jsp">All</a>
                    <a id="bt" href="perfume_시트러스.jsp">Citrus</a>
                    <a id="bt" href="perfume_플로럴.jsp">Flower</a>
                    <a id="bt" href="perfume_프루티.jsp">Fruit</a>
                </td>
            </tr>
        </table>
<br>
		<br>
		<!-- Content -->
		<div class="row" id="top">
           <div class="col-md-6"><a href="https://www.coupang.com/vp/products/197899009?itemId=10275077469&vendorItemId=77557460529&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=11&isAddedCart="target="_blank""><img src="img_perfume/우디새벽.jpg"
            class="living"><p style="font-size:23px;padding-left: 4.5em;text-align: left;">새벽 숲속 향기</a></div>
                <div class="col-md-6"><a href="https://www.coupang.com/vp/products/4883105724?itemId=6359455422&vendorItemId=3537588185&sourceType=srp_product_ads&clickEventId=65ef8e3f-7293-4721-a25d-655c301af7b7&korePlacement=15&koreSubPlacement=6&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=5&isAddedCart="target="_blank"><img src="img_perfume/우디달빛.jpg"
            class="living"><p style="font-size:23px;padding-left: 3.2em;text-align: left;">달빛 속의 공원 산책</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815170&vendorItemId=70307610742&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=55193b71-616c-4a6e-82c6-65ed0163c8d0&korePlacement=15&koreSubPlacement=1&q=%EC%9C%A0%EC%B9%BC%EB%A6%AC%ED%88%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=fa8a442905734050a0f521f0f6ec05c7&rank=0&isAddedCart="target="_blank"><img src="img_perfume/우디나무.jpg"
                class="living"><p style="font-size:23px;padding-left: 4em;text-align: left;">초록빛의 나뭇잎</a></div>
                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/1898819346?itemId=9957786562&vendorItemId=77240936710&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=29&isAddedCart="target="_blank"><img src="img_perfume/우디우디.jpg"
                        class="living"><p style="font-size:23px;padding-left: 3.9em;text-align: left;">딥한 나무 껍질 향</a></div>

</div>
        </div>
                                        </div>
			<br>
			<br>
			<h4 id="p2">추가하고 싶은 리빙 제품이 있다면 알려주세요</h4>
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