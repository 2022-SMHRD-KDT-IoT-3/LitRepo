<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="height: 00px;margin-top: 70px;">
<head>
<meta charset="EUC-KR">
<title>DreamCatcher</title>
<title>Elements - Stellar by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>




</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);

@import
	url('https://fonts.googleapis.com/css2?family=Tangerine:wght@700&display=swap')
	;
	  .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}
	</style>
<body style="font-family: 'Nanum Myeongjo', serif;">
		<%
			//HttpSession session = request.getSession();
		
			//session.getAttribute("id");
					session = request.getSession();
		
			MemberDTO dto = (MemberDTO) session.getAttribute("info");
			System.out.println(dto.getMem_id());
		%>
	
	<span class="span1">
		<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
		<button type="button" onclick="location.href='LogoutServiceCon.do'"
			style="font-family: 'Nanum Myeongjo', serif;" class="btn btn-outline-secondary">�α׾ƿ�</button>
	</span>
<h2 style="padding-top: 50px; font-weight: bold;padding-left: 190px;padding-bottom: 30px;">���� �Խ���</h2>
		<div id = "board">
				
				<!-- post ������� ������ ���� �� content type 
				 		1. �⺻�� application/x-www-form-urlencoded -> key=value
				 		2. text : text/plain 
				 		3. ���� ���� �� : multipart/form-data-->
					
				<form action = "WriteBoardService.do" method="post" enctype="multipart/form-data">
				<table id="list">
					<tr>
						<td>����</td>
						<td><input type="text" name="title"> </td>
					</tr>
					<tr>
						<td>�ۼ���</td>
						<td><%=dto.getMem_id() %></td>
					</tr>
					<tr>
						<td>�� ����</td>
						<td>
							<select name="boardtype" style="font-family: 'Nanum Myeongjo', serif;">
								<option  value= "free">����</option>
								<option  value= "q&a">����</option>
								<option  value = "infomation">����</option>
								<option  value = "sleep">����</option>
							
							</select>
						
						</td>
					
					
					</tr>
					
					<tr>
						<td colspan="2">����</td>
					</tr>
					<tr>
						<td colspan="2">
							<input name="fileName" type="file" style="/* float: right; */margin-right: -60px;margin-bottom: 10px; font-family: 'Nanum Myeongjo', serif;">
							<textarea name="content" rows="10" style="resize: none; font-family: 'Nanum Myeongjo', serif;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" style="font-family: 'Nanum Myeongjo', serif; margin-left: 125px;" value="�ʱ�ȭ" >
							<input type="submit" style="font-family: 'Nanum Myeongjo', serif;" value="�ۼ��ϱ�">
						</td>
					</tr>
				</table>
				</form>
			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
</body>
</html>