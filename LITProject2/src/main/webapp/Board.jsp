<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
	<% BoardDAO dao = new BoardDAO();
	
		ArrayList<BoardDTO> list = dao.showBoard();
		String type = "";
	%>
	
	
	
	<section>
		<h2>���� �Խ���</h2>
		<h3></h3>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<th>�� ��ȣ</th>
						<th>�� ����</th>
						<th>����</th>
						<th>�ۼ���</th>
						<th>�ۼ�����</th>
					</tr>
				</thead>
				<tbody>
				
				
					<% 
						for(int i = list.size()-1; i >=0; i--){
					%>		
							
						 <tr>
						 	
						 <td> <%= i + 1 %></td>
						 <td>
						 <% if(list.get(i).getArticle_type().equals("F")){
							 	type="����";
						 	}else if(list.get(i).getArticle_type().equals("I")){
						 		type="����";
						 	} else if(list.get(i).getArticle_type().equals("S")){
						 		type="����";
						 	} else if(list.get(i).getArticle_type().equals("Q")){
						 		type="����";
						 %>
						 <%}%>
						 <%= type %></td>
						 <td><a href="showBoard.jsp?num=<%= i %>"> <%= list.get(i).getArticle_title() %></a></td>
						 <td><%= list.get(i).getMem_id() %></td>
						 <td><%= list.get(i).getArticle_date() %></td>
						 </tr>	
							
					<%} %>
						
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" align="center"><button onclick='location.href="writeBoard.jsp"'>�� ����</button></td>
					</tr>
				</tfoot>
			</table>
		</div>
</body>
</html>