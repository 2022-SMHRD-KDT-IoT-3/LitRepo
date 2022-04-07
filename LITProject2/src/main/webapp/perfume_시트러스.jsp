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
			<h1 id="id1">Citrus</h1>
			<br>
			<br>
		</header>


			<table>
            <tr align="center">
                <td>
                    <a id="bt" href="content_main.jsp">Main</a>
                    <a id="bt" href="content_perfum.jsp">All</a>
                    <a id="bt" href="perfume_플로럴.jsp">Flower</a>
                    <a id="bt" href="perfume_프루티.jsp">Fruit</a>
                    <a id="bt" href="perfume_우디.jsp">Wood</a>
                </td>
            </tr>
        </table>
<br>
		<br>
		<!-- Content -->
		<div class="row" id="top">
           <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img src="img_perfume/시트러스라임.jpg"
            class="living"><p style="font-size:23px;padding-left: 1.5em;text-align: left;">머릿속까지 상큼한 라임의 향</a></div>
                <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6226574087?itemId=12490607147&vendorItemId=79759305850&q=%EC%9E%90%EB%AA%BD%ED%96%A5%EC%B4%88&itemsCount=36&searchId=dc15ac1eb05b4226a0a9349d9931dc5e&rank=1&isAddedCart="target="_blank"><img src="img_perfume/시트러스 자몽.jpg"
            class="living"><p style="font-size:23px;padding-left: 2.8em;text-align: left;">톡하고 터지는 자몽 향</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815176&vendorItemId=70307610788&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=d3a92d1f93ef4c85bb78244116282e6a&rank=28&isAddedCart="target="_blank"><img src="img_perfume/시트러스풀꽃.jpg"
                class="living"><p style="font-size:23px;padding-left: 2.2em;text-align: left;">코 끝 속 은은한 풀꽃내음</a></div>
                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/1898819346?itemId=9957786562&vendorItemId=77240936710&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=29&isAddedCart="target="_blank"><img src="img_perfume/시트러스라벤더.jpg"
                        class="living"><p style="font-size:23px;padding-left: 0.3em;text-align: left;">보라빛 향기 속 상큼함, 레몬라벤더</a></div>

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