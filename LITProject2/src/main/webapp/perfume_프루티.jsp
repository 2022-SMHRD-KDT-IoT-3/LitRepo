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
			<h1 id="id1">Fruit</h1>
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
                    <a id="bt" href="perfume_우디.jsp">Wood</a>
                </td>
            </tr>
        </table>
<br>
		<br>
		<!-- Content -->
		<div class="row" id="top">
           <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img src="img_perfume/프루티망고.jpg"
            class="living"><p style="font-size:23px;padding-left: 4em;text-align: left;">달달한 망고 향기</a></div>
                <div class="col-md-6"><a href="https://www.coupang.com/vp/products/1143442108?itemId=2114992305&vendorItemId=70113631144&q=%EC%82%AC%EA%B3%BC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=40cf064f3bb8486f83a183336f6a0ecb&rank=1&isAddedCart="target="_blank"><img src="img_perfume/프루티사과.jpg"
            class="living"><p style="font-size:23px;padding-left: 3.5em;text-align: left;">설익은 풋사과 향기</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815184&vendorItemId=70307610864&pickType=COU_PICK&q=%EC%B2%B4%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=c2bc10a4daed4906b232dc5cda6136b6&rank=1&isAddedCart="target="_blank"><img src="img_perfume/프루티체리.jpg"
                class="living"><p style="font-size:23px;padding-left: 2.5em;text-align: left;">달콤하면서 진한 체리향</a></div>
                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/210587460?itemId=627609275&vendorItemId=4648074296&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=498476cd-62e5-4e4f-8b12-c40e1be6231c&korePlacement=15&koreSubPlacement=1&q=%EB%B2%A0%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=87e5318376844767a851e3390656b5fa&rank=0&isAddedCart="target="_blank"><img src="img_perfume/프루티베리.jpg"
                        class="living"><p style="font-size:23px;padding-left: 3.5em;text-align: left;">베리베리 스트로베리</a></div>

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