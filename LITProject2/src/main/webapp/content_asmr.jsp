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
			<h1 id="id1">ASMR</h1>
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
           <div class="col-md-6"><a href="https://www.youtube.com/watch?v=HrO74lj5QBs"target="_blank"><img src="img_asmr/asmr��.jpg"
            class="living"><p style="font-size:23px;padding-left: 7.2em;text-align: left;">��</a></div>
                <div class="col-md-6"><a href="https://www.youtube.com/watch?v=KKi2qiuZZWQ"target="_blank"><img src="img_asmr/asmr�ٶ�.jpg"
            class="living"><p style="font-size:23px;padding-left: 6.8em;text-align: left;">�ٶ�</p></a></div>

            <div class="col-md-6"><a href="https://www.coupang.com/vp/products/4797132556?itemId=6153998527&vendorItemId=73450212697&sourceType=srp_product_ads&clickEventId=9515a7fb-013c-4b3c-aad0-9f19250efe97&korePlacement=15&koreSubPlacement=1&q=%EC%95%88%EB%8C%80&itemsCount=36&searchId=deac6104dfaa4c1a92680379c2d6ca40&rank=0&isAddedCart="target="_blank"><img src="img_asmr/asmr����.jpg"
                class="living"><p style="font-size:23px;padding-left: 6.8em;text-align: left;">����</a></div>
                    <div class="col-md-6"><a href="https://www.youtube.com/watch?v=lYJ17n_oUkA"target="_blank"><img src="img_asmr/asmr��.jpg"
                        class="living"><p style="font-size:23px;padding-left: 7.2em;text-align: left;">��</a></div>

                            <div class="col-md-6"><a href="https://www.youtube.com/watch?v=zp789sRyQKg"target="_blank"><img src="img_asmr/asmr�ٴ�.jpg"
                                class="living"><p style="font-size:23px;padding-left: 6.8em;text-align: left;">�ٴ�</a></div>
                                    <div class="col-md-6"><a href="https://www.youtube.com/watch?v=xym-gmq_rlw"target="_blank"><img src="img_asmr/asmrī��.jpg"
                                        class="living"><p style="font-size:23px;padding-left: 6.8em;text-align: left;">ī��</a></div>
</div>
        </div>
                                        </div>
			<br>
			<br>
			<h4 id="p2">�߰��ϰ� ���� ���� ��ǰ�� �ִٸ� �˷��ּ���</h4>
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