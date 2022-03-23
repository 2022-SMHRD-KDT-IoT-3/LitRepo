<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>

		<title>DreamCatcher</title>
		
		
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

		<style>
			/* ������ ���� ��Ÿ�� ��� ���� */
			#profile{
				margin: auto;
			text-align: center;
			margin-bottom: 10px;
			padding:30px;
			padding-top:50px;
			}


			#dateS{
				margin: auto;
			text-align: center;
			}

			#sujung{
				text-align:center;
				padding-bottom:30px;
			}
			.span1 {
	right: 5px;
	margin-right: 10px;
	top: 2px;
	position: absolute;
	border:1px solid #86458a;
	border-radius: 30px;
}
		</style>

</head>
<body class="is-preload">

<%
	HttpSession session1 = request.getSession();
	
	MemberDTO dto = (MemberDTO) session1.getAttribute("info");
	
	String birthday = dto.getMem_birthday().replace(" 00:00:00", "");
	System.out.println(birthday);

%>



		<span class="span1">
		
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='main_login.jsp'">HOME</button>
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='LogoutServiceCon.do'">�α׾ƿ�</button>
		
		</span>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1 id="join">����������</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main">

						<!-- ������ ���� ����� ���� ���� Ű��� ������ height�� �����ϱ�-->
						<div id="profile">
						<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
			
						</div>
						<div id="sujung">
							<p>ȸ������ ����</p>
						</div>
						<form>
							<table id="table">
								<form action="">
									<!-- ù��° th -->
									<tr>
										<td align="right">���̵�</td>
										<td><%= dto.getMem_id() %></td>
										<td></td>
									</tr>
							 
									<tr>
										<td align="right">�г���</td>
										<td><%= dto.getMem_nick() %></td>
									</tr>

									<tr>
										<td align="right">����</td>
										<td><%= dto.getMem_gender() %></td>
										<td></td>
										
									</tr>	

									
       								 <tr>
            							<td align="right">����</td>
            							<td><%= birthday %></td>
										</tr>

							</table>
						</form>

						<!-- Buttons -->
						
						<!--  ������ ��ư -->
						<div>
							<div class="d-grid  col-8 mx-auto" id="gender">
							</br></br>
								<br>
							</div>

							<div><br></div>
						
						</div>
						
					</div>
					<footer id="footer">
						
						<section>

							<dl class="alt">
								<dt>Address</dt>
								<dd>���� ���� ������ 31-15</dd>
								<dt>Phone</dt>
								<dd>(000) 000-0000 x 0000</dd>
								<dt>Email</dt>
								<dd><a href="#">information@untitled.tld</a></dd>
							</dl>
							<ul class="icons">
								<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a></li>
							</ul>
						</section>
					
					</footer>
				
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>