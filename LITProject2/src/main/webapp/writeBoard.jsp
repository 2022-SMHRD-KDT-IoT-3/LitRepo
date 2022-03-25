<%@page import="model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<title>Elements - Stellar by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>




</head>
<body>
		<%
			//HttpSession session = request.getSession();
		
			//session.getAttribute("id");
					session = request.getSession();
		
			MemberDTO dto = (MemberDTO) session.getAttribute("info");
			System.out.println(dto.getMem_id());
		%>
	
	
	
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
							<select name = "boardtype">
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
							<input name="fileName" type="file" style="float: right;">
							<textarea  name = "content" rows="10" style="resize: none;"></textarea>			
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ">
							<input type="submit" value="�ۼ��ϱ�">
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