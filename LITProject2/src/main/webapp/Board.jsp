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
						<form id="category">
							<th>
									<select name="category">
										<option value="A">��ü����</option>
										<option value="F">����</option>
										<option value="I">����</option>
										<option value="S">����</option>
										<option value="Q">����</option>
									</select>
							</th>
							<th>
								<button type="button" >���û��׺���<a href=""></a></button>
							</th>
						</form>
						<th></th>
						<th></th>
						<th></th>
						<th><input><input type='button' value='�˻�'></th>
					</tr>
					
					<tr>
						<th>�� ��ȣ</th>
						<th>�� ����</th>
						<th>����</th>
						<th>��ȸ��</th>
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
						 <td><a href="showBoard.jsp?article_num=<%= i %>"> <%= list.get(i).getArticle_title() %></a></td>
						 <td><%= list.get(i).getArticle_cnt() %></td>
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
	
	
	<script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		
		// �ʿ��������
		$(document).on("click", "#category", function(){
			
			$.ajax({
				url : "SelectBoardServiceCon.do",
				type : "post",
				data : {
					type : $('#category').serialize()
				},
				success : function(){
					location.reload()
				}
			})	// ajax end
		});	// function end
	
	
	
	</script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>