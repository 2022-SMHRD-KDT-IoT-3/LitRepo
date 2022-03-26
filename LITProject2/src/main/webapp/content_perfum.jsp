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
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'" style="font-family: 'Nanum Myeongjo', serif;">�α׾ƿ�</button>
          
        </span>
		<!-- ������ ��ư ������ �̵��ؿ� �� -->
		<h1 id="top"></h1>

		<!-- Header -->
		<header id="header">
			<h1 id="id1">���� ��õ</h1>
			<br>
			<br>
		</header>


		<nav id="nav">
			<ul>
<!-- �̸� ���� -->
                <li><a href="content_main.jsp">Main</a></li>
                <li><a href="content_perfum.jsp">All</a></li>
				<li><a href="perfume_��Ʈ����.jsp">Citrus</a></li>
				<li><a href="perfume_�÷η�.jsp">Flower</a></li>
				<li><a href="perfume_����Ƽ.jsp">Fruit</a></li>
				<li><a href="perfume_���.jsp">Wood</a></li>

			</ul>
		</nav>


		<br>
		<br>
		<br>
		<br>
		<!-- Content -->
		<section id="content" class="main">

			<table>
				<!-- ��Ʈ���� -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
						<!-- target="_blank"�Ϸ� -->
							<a
								href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img
									src="./img_perfume/��Ʈ��������.jpg" class="card-img-top" width="300px" height="200"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">�Ӹ��ӱ��� ��ŭ�� ������ ��</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6226574087?itemId=12490607147&vendorItemId=79759305850&q=%EC%9E%90%EB%AA%BD%ED%96%A5%EC%B4%88&itemsCount=36&searchId=dc15ac1eb05b4226a0a9349d9931dc5e&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/��Ʈ���� �ڸ�.jpg" class="card-img-top" width="300px" height="200"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">���ϰ� ������ �ڸ� ��</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a href="https://www.coupang.com/vp/products/6102014865?itemId=2310815176&vendorItemId=70307610788&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=d3a92d1f93ef4c85bb78244116282e6a&rank=28&isAddedCart="target="_blank"><img src="./img_perfume/��Ʈ����Ǯ��.jpg" class="card-img-top" width="300px"
									height="200px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> �� �� �� ������ Ǯ�ɳ���</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/1898819346?itemId=9957786562&vendorItemId=77240936710&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=29&isAddedCart="target="_blank"><img
									src="./img_perfume/��Ʈ�����󺥴�.jpg" class="card-img-top" width="300px"
									height="200px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> ����� ��� �� ��ŭ��, ����󺥴�</p>
							</div>
						</div>
					</td>
				</tr>
				<!-- �÷η� -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815177&vendorItemId=70307610802&q=%ED%92%80%EA%BD%83%ED%96%A5%EC%B4%88&itemsCount=36&searchId=4f537df94ce84ab58e2d20793c40faa8&rank=18&isAddedCart="target="_blank"><img
									src="./img_perfume/�÷η���������.PNG" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">���� ���� ������ ��������</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6226573364?itemId=12490601612&vendorItemId=79759300142&q=%EC%9E%A5%EB%AF%B8%ED%96%A5%EC%B4%88&itemsCount=36&searchId=0b7ed3cab494472eb29cfbde87705241&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/�÷η����.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">��Ȥ���� �������</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/4977953368?itemId=1025379210&vendorItemId=70996921337&sourceType=srp_product_ads&clickEventId=c30ce02b-2b89-48df-a315-06766f7c4408&korePlacement=15&koreSubPlacement=5&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=4&isAddedCart="target="_blank"><img
									src="./img_perfume/�÷η���ư.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">�ȱ�� ���� ������ ��ư��</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815169&vendorItemId=70307610733&q=%EB%B0%B1%ED%95%A9%ED%96%A5%EC%B4%88&itemsCount=36&searchId=83776e9eecc949a58fcf950734c4eac9&rank=22&isAddedCart="target="_blank"><img
									src="./img_perfume/�÷η���������.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">ȭ���ϰ� ������ ���� ����</p>
							</div>
						</div>
					</td>
				</tr>

				<!-- ����Ƽ -->

				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6325118485?itemId=13202429754&vendorItemId=80460929836&q=%EB%9D%BC%EC%9E%84%ED%96%A5%EC%B4%88&itemsCount=36&searchId=1c01afa374e748a9a756862503091113&rank=20&isAddedCart="target="_blank"><img
									src="./img_perfume/����Ƽ����.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">�޴��� ���� ���</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/1143442108?itemId=2114992305&vendorItemId=70113631144&q=%EC%82%AC%EA%B3%BC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=40cf064f3bb8486f83a183336f6a0ecb&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/����Ƽ���.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">������ ǲ��� ���</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815184&vendorItemId=70307610864&pickType=COU_PICK&q=%EC%B2%B4%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=c2bc10a4daed4906b232dc5cda6136b6&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/����Ƽü��.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> �����ϸ鼭 ���� ü����</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/210587460?itemId=627609275&vendorItemId=4648074296&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=498476cd-62e5-4e4f-8b12-c40e1be6231c&korePlacement=15&koreSubPlacement=1&q=%EB%B2%A0%EB%A6%AC%ED%96%A5%EC%B4%88&itemsCount=36&searchId=87e5318376844767a851e3390656b5fa&rank=0&isAddedCart="target="_blank"><img
									src="./img_perfume/����Ƽ����.jpg" class="card-img-top" width="300px"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;"> �������� ��Ʈ�κ���</p>
							</div>
						</div>
					</td>
				</tr>

				<!-- ��� -->
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/197899009?itemId=10275077469&vendorItemId=77557460529&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=11&isAddedCart="target="_blank"><img
									src="./img_perfume/������.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">���� ���� ���</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/4883105724?itemId=6359455422&vendorItemId=3537588185&sourceType=srp_product_ads&clickEventId=65ef8e3f-7293-4721-a25d-655c301af7b7&korePlacement=15&koreSubPlacement=6&q=%EC%9A%B0%EB%94%94+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=b1ca27bdc30b42c798a7120b602f3b30&rank=5&isAddedCart="target="_blank"><img
									src="./img_perfume/���޺�.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">�޺� ���� ���� ��å</p>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/6102014865?itemId=2310815170&vendorItemId=70307610742&pickType=COU_PICK&sourceType=srp_product_ads&clickEventId=55193b71-616c-4a6e-82c6-65ed0163c8d0&korePlacement=15&koreSubPlacement=1&q=%EC%9C%A0%EC%B9%BC%EB%A6%AC%ED%88%AC%EC%8A%A4+%ED%96%A5%EC%B4%88&itemsCount=36&searchId=fa8a442905734050a0f521f0f6ec05c7&rank=0&isAddedCart="target="_blank"><img
									src="./img_perfume/��𳪹�.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">�ʷϺ��� ������</p>
							</div>
						</div>
					</td>

					<td>
						<div class="card" style="width: 18rem;">
							<a
								href="https://www.coupang.com/vp/products/2175850043?itemId=3702539884&vendorItemId=71687821546&pickType=COU_PICK&q=%EC%9A%B0%EB%93%9C+%EC%BA%94%EB%93%A4&itemsCount=36&searchId=c617d17b717f4b7e8e1aab9ca9b778b9&rank=1&isAddedCart="target="_blank"><img
									src="./img_perfume/�����.jpg" class="card-img-top" width="300px" height="220"></a>
							<div class="card-body">
								<p class="card-text" style="text-align: center;">���� ���� ���� ��</p>
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