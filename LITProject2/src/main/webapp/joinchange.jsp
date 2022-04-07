<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			/* 프로필 영역 스타일 가운데 정렬 */
			#profile{
				margin: auto;
			text-align: center;
			margin-bottom: 10px;
			padding:30px;
			}


			#dateS{
				margin: auto;
			text-align: center;
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
	
	
	System.out.println(dto.getMem_gender());
	
	%>
	
		<span class="span1">
		
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='main_login.jsp'">HOME</button>
				<button type="button" class="btn btn-outline-secondary" onClick="location.href='login.jsp'">로그아웃</button>
		
		</span>


		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1 id="join">회원정보수정</h1>
						<br></br>
					</header>

				<!-- Main -->
				<div id="main">

						<!-- 프로필 영역 참고로 세로 영역 키우고 싶으면 height로 조정하기-->
						<div id="profile">
						<svg xmlns="http://www.w3.org/2000/svg" width="100s" height="100" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
						</div>
						
						<form action="JoinChangeServiceCon.do" method="post">
							<table>
									<!-- 첫번째 th -->
									<tr>
										<td align="right">아이디</td>
										<td><input type="hidden" name="id" value="<%= dto.getMem_id() %>"><%= dto.getMem_id() %></td>
										<td></td>
									</tr>
							 
							
									<tr>
										<td align="right">비밀번호</td>
										<td><input type="password" name="pw" value="<%= dto.getMem_pw() %>"></td>
										
									</tr>
									<tr>
										<td align="right">닉네임</td>
										<td><input type="text" name="nick" value="<%= dto.getMem_nick() %>"></td>
									</tr>

									<tr>
										<td align="right">성별</td>
										<td>
											<input type="radio" name="gender" value="M" class="radio_gender" id="inlineRadio2" >
											<label class="form-check-label" for="inlineRadio2" >남자</label>
											<input type="radio" name="gender" value="F" class="readio_gender" id="inlineRadio1">
											<label class="form-check-label" for="inlineRadio1" >여자</label>
										</td>
									</tr>	

									
       								 <tr>
            							<td align="right">생일</td>
            							<td>
											<input type="date" class="form-control"
											id="exampleFormControlInput1" id="line" name = "birthday" value="<%= birthday %>"></td>
									</tr>

							</table>
								<!--  마지막 버튼 -->
							<div>
								<div class="d-grid  col-8 mx-auto" id="gender">
								</br></br>
									<input type="submit" class="btn btn-secondary btn-lg" id="btn1" value="회원 정보 수정">
									<br>
								</div>
	
								<div><br></div>
							
							</div>
							
						
						</form>

						<!-- Buttons -->
						
						</div>
				</div>
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