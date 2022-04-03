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
			<h1 id="id1">��</h1>
			<br>
			<br>
		</header>


			<table>
            <tr align="center">
                <td>
                    <a id="bt" href="content_main.jsp">Main</a>
                    <a id="bt" href="content_perfum.jsp">����</a>
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
           <div class="col-md-6"><a href="https://www.coupang.com/vp/products/2311561?itemId=5135119583&vendorItemId=74540421394&pickType=COU_PICK&q=%EC%BA%90%EB%AA%A8%EB%A7%88%EC%9D%BC%ED%8B%B0&itemsCount=36&searchId=d4b2dce08b4845f0a367a2df1df5dc41&rank=2&isAddedCart="target="_blank"><img src="img_tea/��ĳ����.jpg"
            class="living"><p style="font-size:23px;padding-left: 5.8em;text-align: left;">ĳ����</a></div>
                <div class="col-md-6"><a href="https://www.coupang.com/vp/products/1082648695?itemId=2035763559&vendorItemId=70035188390&q=%EA%BF%80%EC%B0%A8&itemsCount=36&searchId=493023567fff471c8b458cd9b40b83a0&rank=1&isAddedCart="target="_blank"><img src="img_tea/������.jpg"
            class="living"><p style="font-size:23px;padding-left: 6.7em;text-align: left;">����</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/18024473?itemId=72405898&vendorItemId=3117072636&q=%EB%9D%BC%EB%B2%A4%EB%8D%94%EC%B0%A8&itemsCount=36&searchId=d2aee0cdf16a4797a54d4ba79949cf11&rank=1&isAddedCart="target="_blank"><img src="img_tea/���󺥴���.jpg"
                class="living"><p style="font-size:23px;padding-left: 6em;text-align: left;">�󺥴���</a></div>
                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/7039784?itemId=31205904&vendorItemId=3000131322&pickType=COU_PICK&q=%EB%8C%80%EC%B6%94%EC%B0%A8&itemsCount=36&searchId=7e8a2e9fcd7241caac138dec1463dc4a&rank=1&isAddedCart="target="_blank"><img src="img_tea/��������.jpg"
                        class="living"><p style="font-size:23px;padding-left: 6.3em;text-align: left;">������</a></div>

                            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/183748827?itemId=526176763&vendorItemId=3000398051&q=%ED%8C%A8%ED%8D%BC%EB%AF%BC%ED%8A%B8&itemsCount=36&searchId=5ac538716c654b20933e993076243ddd&rank=1&isAddedCart="target="_blank"><img src="img_tea/�����۹�Ʈ.jpg"
                                class="living"><p style="font-size:23px;padding-left: 5.8em;text-align: left;">���۹�Ʈ</a></div>
                                    <div class="col-md-6"><a href="https://www.coupang.com/vp/products/198253289?itemId=572325705&vendorItemId=79468288958&sourceType=srp_product_ads&clickEventId=ea33d7ea-03ea-4580-a8c3-2fd99b534357&korePlacement=15&koreSubPlacement=1&q=%EC%98%A4%EB%AF%B8%EC%9E%90%EC%B0%A8&itemsCount=36&searchId=c13281d7ea3d412b86e2ec14ff6083ba&rank=0&isAddedCart="target="_blank"><img src="img_tea/����������.jpg"
                                        class="living"><p style="font-size:23px;padding-left: 5.8em;text-align: left;">��������</a></div>
</div>
        </div>
                                        </div>
			<br>
			<br>
			<h4 id="p2">�߰��ϰ� ���� �� ��ǰ�� �ִٸ� �˷��ּ���</h4>
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