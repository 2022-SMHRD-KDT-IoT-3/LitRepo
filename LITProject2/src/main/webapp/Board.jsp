<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
		<h2>자유 게시판</h2>
		<h3></h3>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<form id="category">
							<th>
									<select name="category">
										<option value="A">전체보기</option>
										<option value="F">자유</option>
										<option value="I">정보</option>
										<option value="S">수면</option>
										<option value="Q">질문</option>
									</select>
							</th>
							<th>
								<button type="button" >선택사항보기<a href=""></a></button>
							</th>
						</form>
						<th></th>
						<th></th>
						<th></th>
						<th><input><input type='button' value='검색'></th>
					</tr>
					
					<tr>
						<th>글 번호</th>
						<th>글 유형</th>
						<th>제목</th>
						<th>조회수</th>
						<th>작성자</th>
						<th>작성일자</th>
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
							 	type="자유";
						 	}else if(list.get(i).getArticle_type().equals("I")){
						 		type="정보";
						 	} else if(list.get(i).getArticle_type().equals("S")){
						 		type="수면";
						 	} else if(list.get(i).getArticle_type().equals("Q")){
						 		type="질문";
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
						<td colspan="5" align="center"><button onclick='location.href="writeBoard.jsp"'>글 쓰기</button></td>
					</tr>
				</tfoot>
			</table>
		</div>
	
	
	<script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		
		// 필요없을지도
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