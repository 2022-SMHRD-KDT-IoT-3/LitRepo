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
	
	
	#img{
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

	</style>

</head>

<body class="is-preload" style="font-family: 'Nanum Myeongjo', serif;">

	<!-- Wrapper -->
	<div id="wrapper">
        <span class="span1">
    
            <button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
            style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
            <button type="button" onclick="location.href='mypage.jsp'" class="btn btn-outline-secondary"
            style="font-family: 'Nanum Myeongjo', serif;">����������</button>
            <button type="button" onclick="location.href='LogoutServiceCon.do'" class="btn btn-outline-secondary"
            style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
        </span>
		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">Flower</h1>
			<br>
			<br>
		</header>


		<table>
            <tr align="center">
                <td>
                    <a id="bt" href="content_main.jsp">Main</a>
                    <a id="bt" href="content_perfum.jsp">All</a>
                    <a id="bt" href="perfume_��Ʈ����.jsp">Citrus</a>
                    <a id="bt" href="perfume_����Ƽ.jsp">Fruit</a>
                    <a id="bt" href="perfume_���.jsp">Wood</a>
                </td>
            </tr>
        </table>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">
			<table>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank"�Ϸ� -->
							<a href ="https://www.coupang.com/vp/products/6102014865?itemId=2310815177&vendorItemId=70307610802&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=18&isAddedCart="target="_blank"><img src="./img_perfume/�÷η���������.PNG" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">���� ���� ������ ��������</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6226573364?itemId=12490601612&vendorItemId=79759300142&q=%EC%9E%A5%EB%AF%B8%ED%96%A5%EC%B4%88&itemsCount=36&searchId=0b7ed3cab494472eb29cfbde87705241&rank=1&isAddedCart="target="_blank"><img src="./img_perfume/�÷η����.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">��Ȥ���� �������</p>
							</div>
						  </div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/4977953368?itemId=1025379210&vendorItemId=70996921337&sourceType=srp_product_ads&clickEventId=c30ce02b-2b89-48df-a315-06766f7c4408&korePlacement=15&koreSubPlacement=5&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=4&isAddedCart="target="_blank"><img src="./img_perfume/�÷η���ư.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">�ȱ�� ���� ������ ��ư��</p>
							</div>
						  </div>
					</td>
					
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815169&vendorItemId=70307610733&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=22&isAddedCart="target="_blank"><img src="./img_perfume/�÷η���������.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
							  <p class="card-text" style="text-align: center;">ȭ���ϰ� ������ ���� ����</p>
							</div>
						  </div>
					</td>
				</tr>
				</table>
			



			<br>
			<br>
			<h4 id="p2">�߰��ϰ� ���� ��Ⱑ �ִٸ� �˷��ּ���</h4>
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