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
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='mypage.jsp'" style="font-family: 'Nanum Myeongjo', serif;">����������</button>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
    
            
    
            </span>
		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">���</h1>
			<br>
			<br>
		</header>


			<table>
            <tr align="center">
                <td>
                    <a id="bt" href="content_main.jsp">Main</a>
                    <a id="bt" href="perfume_��Ʈ����.jsp">����</a>
                    <a id="bt" href="content_meditation.jsp">���</a>
                    <a id="bt" href="content_asmr.jsp">ASMR</a>
                    <a id="bt" href="content_living.jsp">���� ��ǰ</a>
                    <a id="bt" href="content_tea.jsp">��</a>
                </td>
            </tr>
        </table>
<br>
		<br>
		<!-- Content -->
		<div class="row" id="top">
           <div class="col-md-6"><a href="https://www.youtube.com/watch?v=nlX8Bj6VT4o"target="_blank"><img src="img_meditation/�����.jpg"
            class="living"><p style="font-size:23px;padding-left: 6.6em;text-align: left;">���</a></div>
                <div class="col-md-6"><a href="https://www.coupang.com/vp/products/1305259983?itemId=2320100298&vendorItemId=78780013918&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=e478d1ed-5375-49fd-a4e9-9e2e16b3de4f&korePlacement=15&koreSubPlacement=1&q=%EB%AA%85%EC%83%81%EC%9A%A9%ED%92%88&itemsCount=36&searchId=5fbef06f73d649da836a02d9d4f6f3fe&rank=0&isAddedCart="target="_blank"><img src="img_meditation/����μ���.jpg"
            class="living"><p style="font-size:23px;padding-left: 5.4em;text-align: left;">�μ�Ʈ��ƽ</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/2056847696?itemId=3496278303&vendorItemId=71482508441&sourceType=srp_product_ads&clickEventId=8ecd2f62-cab1-4d43-b5dc-113dd1979a3d&korePlacement=15&koreSubPlacement=6&q=%EC%95%84%EB%A1%9C%EB%A7%88%EC%98%A4%EC%9D%BC&itemsCount=36&searchId=422130f583a94169bfb62303c306787e&rank=5&isAddedCart="target="_blank"><img src="img_meditation/���Ʒθ�.jpg"
                class="living"><p style="font-size:23px;padding-left: 6.2em;text-align: left;">�Ʒθ�</a></div>
                    <div class="col-md-6"><a href="https://www.youtube.com/watch?v=1vfMmDuTweQ"><img src="img_meditation/���Ʈ��Ī.jpg"
                        class="living"><p style="font-size:23px;padding-left: 5.8em;text-align: left;">��Ʈ��Ī</a></div>

                            <div class="col-md-6"><a href="https://www.youtube.com/watch?v=gO5tVebwG_M"target="_blank"><img src="img_meditation/���䰡.jpg"
                                class="living"><p style="font-size:23px;padding-left: 6.6em;text-align: left;">�䰡</a></div>
                                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/306146801?itemId=965291509&vendorItemId=5369727465&q=%EB%A7%88%EC%82%AC%EC%A7%80%EB%B3%BC&itemsCount=36&searchId=333a32fe54864e2c8947ba8512aa4859&rank=0&isAddedCart="target="_blank"><img src="img_meditation/��󸶻���.jpg"
                                        class="living"><p style="font-size:23px;padding-left: 5.8em;text-align: left;">��������</a></div>
</div>
        </div>
                                        </div>
			<br>
			<br>
			<h4 id="p2">�߰��ϰ� ���� ����� �ִٸ� �˷��ּ���</h4>
			<p id="p2">������� �ǰ��� �켱�Ͽ� �������� �߰��ϰڽ��ϴ�</p>
			<br>

		</section>


	</div>

<button type="button" id="gotop"><a href="#top">�� ����</a></button>



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