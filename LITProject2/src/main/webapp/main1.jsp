<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<!-- �������� �̸� -->
<title>lit!</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script src="https://kit.fontawesome.com/def66b134a.js"
	crossorigin="anonymous"></script>

<style>
.span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

#wrapper {
	margin-top: 60px;
}
</style>


</head>
<body class="is-preload">


	<!-- Wrapper -->
	<div id="wrapper">

		<!-- �α��� ��ư -->

			<span class="span1">
			<button type="button" class="btn btn-outline-secondary" onclick="location.href='join.jsp'">ȸ������</button>
			<button type="button" class="btn btn-outline-secondary" onclick="location.href='login.jsp'">�α���</button>
			

		</span>


		<!-- Header(���� ���� �������� ȭ��) -->
		<header id="header" class="alt">
			<h1>Dream Catcher</h1>
			<p>
				����� �Ҹ����� �������ϴ�<br />


				<!-- Main -->
			<div id="main">

				<!-- Introduction(ȸ��Ұ�)-->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>ȸ��Ұ�</h2>
							</header>
							<p>���ù��� �� ��� �� �� ������? ��� ���� �������� �� lit�̶� ȸ�簡 �Ἲ�Ǿ����ϴ�. �������
								������ ���� ���� �پ��� ����� �����ϰ� �ֽ��ϴ�. ���� ���� ���� ���� ���� �����丮�� Ȯ���� �� �ְ�
								�������� �ǵ���� �����մϴ�.</p>

						</div>

					</div>
				</section>

				<!-- First Section(��ǰ�Ұ�)-->
				<section id="first" class="main special">
					<header class="major">
						<h2>��ǰ �Ұ�</h2>
						<br>
					</header>
					<ul class="features">

						<table>
							<tr>

								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="80" height="80" fill="currentColor"
										class="bi bi-lightbulb" viewBox="0 0 16 16">
											<path
											d="M2 6a6 6 0 1 1 10.174 4.31c-.203.196-.359.4-.453.619l-.762 1.769A.5.5 0 0 1 10.5 13a.5.5 0 0 1 0 1 .5.5 0 0 1 0 1l-.224.447a1 1 0 0 1-.894.553H6.618a1 1 0 0 1-.894-.553L5.5 15a.5.5 0 0 1 0-1 .5.5 0 0 1 0-1 .5.5 0 0 1-.46-.302l-.761-1.77a1.964 1.964 0 0 0-.453-.618A5.984 5.984 0 0 1 2 6zm6-5a5 5 0 0 0-3.479 8.592c.263.254.514.564.676.941L5.83 12h4.342l.632-1.467c.162-.377.413-.687.676-.941A5 5 0 0 0 8 1z" />
										  </svg>
									<h3>����� ���</h3>
									<p>���� �� ������ �����ϸ� ��Ȳ�� ���� ���� ���� ��õ�մϴ�. ī�װ��� ����, ����, ��Ƽ ��
										6������ �з��Ǿ� �ֽ��ϴ�</p></td>
							</tr>

							<tr>
								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="75" height="75" fill="currentColor"
										class="bi bi-heart-pulse-fill" viewBox="0 0 16 16">
													<path fill-rule="evenodd"
											d="M1.475 9C2.702 10.84 4.779 12.871 8 15c3.221-2.129 5.298-4.16 6.525-6H12a.5.5 0 0 1-.464-.314l-1.457-3.642-1.598 5.593a.5.5 0 0 1-.945.049L5.889 6.568l-1.473 2.21A.5.5 0 0 1 4 9H1.475ZM.879 8C-2.426 1.68 4.41-2 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C11.59-2 18.426 1.68 15.12 8h-2.783l-1.874-4.686a.5.5 0 0 0-.945.049L7.921 8.956 6.464 5.314a.5.5 0 0 0-.88-.091L3.732 8H.88Z" />
												  </svg> <br>
									<h3>���� �����丮 ���</h3>
									<p>������� ����� �ɹڼ�, ���ú��� �����ϰ� �׷��� ���·� �����ݴϴ�. ���� ����� ��/���� ����
										�����Ͽ� ����ڰ� ���� ȯ���� Ȯ���� �� �ֽ��ϴ�.</p></td>
							</tr>

							<tr>
								<td><br> <svg xmlns="http://www.w3.org/2000/svg"
										width="70" height="70" fill="currentColor"
										class="bi bi-file-earmark-bar-graph" viewBox="0 0 16 16">
													<path
											d="M10 13.5a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-6a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v6zm-2.5.5a.5.5 0 0 1-.5-.5v-4a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5h-1zm-3 0a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-1z" />
													<path
											d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5v2z" />
												  </svg> <br>
									<h3>�ǵ�� ����</h3>
									<p>7�ϰ��� ����� �����͸� �����Ͽ� �м��մϴ�. ���� ���� ����� �̻��� ������ ������ �����
										�����ص帳�ϴ�. ���յ� ����� ���������� �̸��Ϸ� ���� �� �ֽ��ϴ�.</p></td>
							</tr>
						</table>
				</section>


				<!-- Second Section(�ǵ�� ����) -->
				<section id="second" class="main special">
					<header class="major">
						<h2>�ǵ�� ����</h2>
						<p>�������� �ǰ߰� ���� �����Ͽ� ������� ���鿡 ������ �Ǵ� ���� �ǵ���� �����մϴ�.</p>
					</header>
					<ul class="statistics">
						<li class="style1">
							<h3>(1)</h3> �� ������ ȸ������ �� ��ǰ Ȯ��
						</li>
						<li class="style2">
							<h3>(2)</h3>������ ���¿��� 5~10�а� �ɹڼ� ����<br> ��� �ɹڵ����͸� �����մϴ�
						</li>
						<li class="style3">
							<h3>(3)</h3>5�ϵ��� ������� �ɹ�, �ڰ��� �����͸� �����մϴ�<br> �� �� ���� �����͸�
							�׷���ȭ�Ͽ� �׷����� �м��մϴ�

						</li>
						<li class="style4">
							<h3>(4)</h3>�м��� �׷����� �������� �ǰ�, ���� �������� �ؼ��մϴ�<br> �̻� ¡�� �߰� ��
							����ڴ� ������ ��� ���񽺸� ���� �� �ֽ��ϴ�
						</li>
						<li class="style5">
							<h3>(5)</h3>���������ʹ� ������� �̸��Ϸ� ���������� �߼۵˴ϴ�<br> ����ڴ� ���� ���� �������
							�������� �����޽��ϴ�

						</li>
					</ul>
				</section>

				<!-- Get Started -->
				<section id="cta" class="main special">
					<header class="major">
						<h2>���񽺸� �̿��ϰ� �����ôٸ� �Ʒ��� ��ȣ�� �������ּ���</h2>
						<p>
							����� ��Ż�� ���õǾ� ������ ģ���� ����ص帮�ڽ��ϴ�<br /> ����� �ǰ��� ������ ���� ����մϴ�
						</p>
						phone : 010-0000-0000 <br> email : doeun1327@naver.com <br>
					</header>
					<br>
					
				</section>

			</div>

			<!-- Footer -->
			<footer id="footer">
				
				<section>
					<h2>ȸ�� ����</h2>
					<dl class="alt">
						<dt>Address</dt>
						<dd>���� ���� ������</dd>
						<dt>Phone</dt>
						<dd>(000) 000-0000 x 0000</dd>
						<dt>Email</dt>
						<dd>
							<a href="#">information@untitled.tld</a>
						</dd>
					</dl>
					<ul class="icons">
						<li><a href="#" class="icon brands fa-twitter alt"><span
								class="label">Twitter</span></a></li>
						<li><a href="#" class="icon brands fa-facebook-f alt"><span
								class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-instagram alt"><span
								class="label">Instagram</span></a></li>
						<li><a href="#" class="icon brands fa-github alt"><span
								class="label">GitHub</span></a></li>
						<li><a href="#" class="icon brands fa-dribbble alt"><span
								class="label">Dribbble</span></a></li>
					</ul>
				</section>

			</footer>
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