<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>DreamCatcher</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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

#id1 {
	padding-top: 95px;
}

#bt {
	text-align: center;
	margin-left: 20px;
	margin-right: 20px;
	color: white;
}

.row {
	max-width: 100%;
	height: auto;
}

.row>* {
	padding: 0 6.5em 0 3.5em;
}

@media screen and (max-width: 736px) {
}

.row>* {
	padding: 0 6.5em 0 3.5em;
}

.living {
	width: 350px;
	height: 250px;
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
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='main_login.jsp'"
				style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='mypage.jsp'"
				style="font-family: 'Nanum Myeongjo', serif;">����������</button>
			<button type="button" class="btn btn-outline-secondary"
				onclick="location.href='LogoutServiceCon.do'"
				style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>



		</span>
		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">����</h1>
			<br> <br>
		</header>


		<table>
			<tr align="center">
				<td><a id="bt" href="content_main.jsp">Main</a> <a id="bt"
					href="content_perfum.jsp">����</a> <a id="bt"
					href="content_meditation.jsp">���</a> <a id="bt"
					href="content_asmr.jsp">ASMR</a> <a id="bt"
					href="content_living.jsp">���� ��ǰ</a> <a id="bt"
					href="content_tea.jsp">��</a></td>
			</tr>
		</table>
		<br> <br>
		<!-- Content -->
		<div class="row" id="top">
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="
					target="_blank" target="_blank"><img
					src="img_perfume/��Ʈ��������.jpg" class="living">
				<p style="font-size: 23px; padding-left: 1.5em; text-align: left;">�Ӹ��ӱ���
						��ŭ�� ������ ��</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6226574087?itemId=12490607147&vendorItemId=79759305850&q=%EC%9E%90%EB%AA%BD%ED%96%A5%EC%B4%88&itemsCount=36&searchId=dc15ac1eb05b4226a0a9349d9931dc5e&rank=1&isAddedCart="
					target="_blank"><img src="img_perfume/��Ʈ���� �ڸ�.jpg"
					class="living">
				<p style="font-size: 23px; padding-left: 2.8em; text-align: left;">���ϰ�
						������ �ڸ� ��</p></a>
			</div>

			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/4797132556?itemId=6153998527&vendorItemId=73450212697&sourceType=srp_product_ads&clickEventId=9515a7fb-013c-4b3c-aad0-9f19250efe97&korePlacement=15&koreSubPlacement=1&q=%EC%95%88%EB%8C%80&itemsCount=36&searchId=deac6104dfaa4c1a92680379c2d6ca40&rank=0&isAddedCart="
					target="_blank"><img src="img_perfume/��Ʈ����Ǯ��.jpg"
					class="living">
				<p style="font-size: 23px; padding-left: 2.2em; text-align: left;">
				�ڳ� �� ������ Ǯ�ɳ���</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6102014865?itemId=2310815176&vendorItemId=70307610788&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=d3a92d1f93ef4c85bb78244116282e6a&rank=28&isAddedCart="
					target="_blank"><img src="img_perfume/��Ʈ�����󺥴�.jpg"
					class="living">
				<p style="font-size: 23px; padding-left: 0.3em; text-align: left;">
				����� ��� �� ��ŭ��, ����󺥴�</a>
			</div>

			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6102014865?itemId=2310815177&vendorItemId=70307610802&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=18&isAddedCart="
					target="_blank"><img src="img_perfume/�÷η���������.PNG"
					class="living">
				<p style="font-size: 23px; padding-left: 2em; text-align: left;">����
						���� ������ ��������</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6226573364?itemId=12490601612&vendorItemId=79759300142&q=%EC%9E%A5%EB%AF%B8%ED%96%A5%EC%B4%88&itemsCount=36&searchId=0b7ed3cab494472eb29cfbde87705241&rank=1&isAddedCart="
					target="_blank"><img src="img_perfume/�÷η����.jpg" class="living">
				<p style="font-size: 23px; padding-left: 3.8em; text-align: left;">��Ȥ����
						�������</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/4977953368?itemId=1025379210&vendorItemId=70996921337&sourceType=srp_product_ads&clickEventId=c30ce02b-2b89-48df-a315-06766f7c4408&korePlacement=15&koreSubPlacement=5&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=4&isAddedCart="
					target="_blank"><img src="img_perfume/�÷η���ư.jpg" class="living">
				<p style="font-size: 23px; padding-left: 2em; text-align: left;">�ȱ��
						���� ������ ��ư��</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6102014865?itemId=2310815169&vendorItemId=70307610733&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=22&isAddedCart="
					target="_blank"><img src="img_perfume/�÷η���������.jpg"
					class="living">
				<p style="font-size: 23px; padding-left: 1.8em; text-align: left;">ȭ���ϰ�
						������ ���� ����</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="
					target="_blank"><img src="img_perfume/����Ƽ����.jpg" class="living">
				<p style="font-size: 23px; padding-left: 4em; text-align: left;">�޴���
						���� ���</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/1143442108?itemId=2114992305&vendorItemId=70113631144&q=%EC%82%AC%EA%B3%BC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=40cf064f3bb8486f83a183336f6a0ecb&rank=1&isAddedCart="
					target="_blank"><img src="img_perfume/����Ƽ���.jpg" class="living">
				<p style="font-size: 23px; padding-left: 3.5em; text-align: left;">������
						ǲ��� ���</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6102014865?itemId=2310815184&vendorItemId=70307610864&pickType=COU_PICK&q=%EC%B2%B4%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=c2bc10a4daed4906b232dc5cda6136b6&rank=1&isAddedCart="
					target="_blank"><img src="img_perfume/����Ƽü��.jpg" class="living">
				<p style="font-size: 23px; padding-left: 2.5em; text-align: left;">�����ϸ鼭
						���� ü����</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/210587460?itemId=627609275&vendorItemId=4648074296&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=498476cd-62e5-4e4f-8b12-c40e1be6231c&korePlacement=15&koreSubPlacement=1&q=%EB%B2%A0%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=87e5318376844767a851e3390656b5fa&rank=0&isAddedCart="
					target="_blank"><img src="img_perfume/����Ƽ����.jpg" class="living">
				<p style="font-size: 23px; padding-left: 3.5em; text-align: left;">��������
						��Ʈ�κ���</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/197899009?itemId=10275077469&vendorItemId=77557460529&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=11&isAddedCart="
					target="_blank"><img src="img_perfume/������.jpg" class="living">
				<p style="font-size: 23px; padding-left: 4.5em; text-align: left;">����
						���� ���</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/4883105724?itemId=6359455422&vendorItemId=3537588185&sourceType=srp_product_ads&clickEventId=65ef8e3f-7293-4721-a25d-655c301af7b7&korePlacement=15&koreSubPlacement=6&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=5&isAddedCart="
					target="_blank"><img src="img_perfume/���޺�.jpg" class="living">
				<p style="font-size: 23px; padding-left: 3.2em; text-align: left;">�޺�
						���� ���� ��å</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/6102014865?itemId=2310815170&vendorItemId=70307610742&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=55193b71-616c-4a6e-82c6-65ed0163c8d0&korePlacement=15&koreSubPlacement=1&q=%EC%9C%A0%EC%B9%BC%EB%A6%AC%ED%88%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=fa8a442905734050a0f521f0f6ec05c7&rank=0&isAddedCart="
					target="_blank"><img src="img_perfume/��𳪹�.jpg" class="living">
				<p style="font-size: 23px; padding-left: 4em; text-align: left;">�ʷϺ���
						������</a>
			</div>
			<div class="col-md-6">
				<a
					href="https://www.coupang.com/vp/products/2175850043?itemId=3702539884&vendorItemId=71687821546&pickType=COU_PICK&q=%EC%9A%B0%EB%93%9C+%EC%BA%94%EB%93%A4&itemsCount=36&searchId=c617d17b717f4b7e8e1aab9ca9b778b9&rank=1&isAddedCart="
					target="_blank"><img src="img_perfume/�����.jpg" class="living">
				<p style="font-size: 23px; padding-left: 3.9em; text-align: left;">����
						���� ���� ��</a>
			</div>

		</div>
		<br> <br>
		<h4 id="p2">�߰��ϰ� ���� ���� ��ǰ�� �ִٸ� �˷��ּ���</h4>
		<p id="p2">������� �ǰ��� �켱�Ͽ� �������� �߰��ϰڽ��ϴ�</p>
		<br>

		</section>


	</div>

	<button type="button" id="gotop">
		<a href="#top">�� ����</a>
	</button>



	<br>
	<br>
	<br>
	<br>
	<br>
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