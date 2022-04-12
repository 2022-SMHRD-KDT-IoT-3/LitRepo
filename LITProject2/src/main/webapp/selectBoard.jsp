<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 01px;">
<head>
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
	table th {
    font-size: 0.8em;
    font-weight: 400;
    text-align: center;
    padding: 0 0.75em 0.95em 0.3em;
}
	select {
    background-size: 1rem;
    background-repeat: no-repeat;
    background-position: calc(100% - 0.5rem) center;
    height: 2.75em;
    padding-right: 2em;
    text-overflow: ellipsis;
}
input, select, textarea {
    color: #ffffff;
}
  .span1 {
	right: 10px;
	top: 10px;
	position: absolute;
}

body {
    background-color: #935d8c;
    color:#FFFFFF;
}
select {
    background-size: 1rem;
    background-repeat: no-repeat;
    background-position: calc(100% - 13px) center;
    height: 2.75em;
    padding-right: 2em;
    text-overflow: ellipsis;
}

</style>

<body style="font-family: 'Nanum Myeongjo', serif;">
	<% BoardDAO dao = new BoardDAO();
	
		System.out.println("selectBoard.jsp");
		
		ArrayList<BoardDTO> list = (ArrayList<BoardDTO>)session.getAttribute("list");
		//ArrayList<BoardDTO> list = dao.showCategoryBoard(dto);
		String type = "";
		
		System.out.println("list : " + list);
		
		
	%>
	
	
	
	<section>
	<span class="span1">
		<button type="button" onclick="location.href='main_login.jsp'" class="btn btn-outline-secondary"
			style="font-family: 'Nanum Myeongjo', serif;">HOME</button>
		<button type="button" onclick="location.href='LogoutServiceCon.do'"
			style="font-family: 'Nanum Myeongjo', serif;" class="btn btn-outline-secondary">로그아웃</button>
	</span>
	
<h2 style="padding-top: 80px; font-weight: bold;padding-left: 190px;padding-bottom: 30px;">자유 게시판</h2>
		<h3></h3>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<form action="SelectBoardServiceCon.do" method="post">
							<th>
								<select name="category" style="font-size: 14px;;;">
									<option value="A">전체보기</option>
									<option value="F">자유</option>
									<option value="I">정보</option>
									<option value="S">수면</option>
									<option value="Q">질문</option>
								</select>
							</th>
							<th>
								<input type="submit" style="font-family: 'Nanum Myeongjo', serif;font-size: 12.5px;"value="선택" >
							</th>
						</form>
						<th></th>
						<th></th>
						<th></th>
						<th><input style="margin-left: -200px;"><input type="button" value="검색" style="font-family: 'Nanum Myeongjo', serif;
    font-size: 14px;
    margin-left: 10px;"></th>
					</tr>
					
					<tr style="width:100px;padding-top: 20px;padding-bottom: 4px;">
						<th style="padding-top: 15px;padding-bottom: 5px;">글 번호</th>
						<th style="padding-top: 15px;padding-bottom: 5px;">글 유형</th>
						<th style="padding-top: 15px;padding-bottom: 5px;">제목</th>
						<th style="padding-top: 15px;padding-bottom: 5px;width: 50px;">조회수</th>
						<th style="padding-top: 15px;padding-bottom: 5px;">작성자</th>
						<th style="padding-top: 15px;padding-bottom: 5px;">작성일자</th>
					</tr>
				</thead>
				<tbody style="font-size:14px;">
				
				
					<% 
						for(int i = list.size()-1; i >=0; i--){
					%>		
							
						 <tr>
						 	
						 <td style="width: 50px;text-align: center;"> <%= i + 1 %></td>
						 <td style="font-size:14px;">
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
						 <td style="width: 90px;"><a href="showBoard.jsp?article_num=<%= i %>"> <%= list.get(i).getArticle_title() %></a></td>
						 <td><%= list.get(i).getArticle_cnt() %></td>
						 <td><%= list.get(i).getMem_id() %></td>
						 <td><%= list.get(i).getArticle_date() %></td>
						 </tr>	
							
					<%} %>
						
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" align="center"><button onclick="location.href=&quot;writeBoard.jsp&quot;" style="font-family: 'Nanum Myeongjo', serif;margin-left: 150px;margin-top: 20px;">글쓰기</button></td>
					</tr>
				</tfoot>
			</table>
		</div>
	
	
	<script src="assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		
	
	</script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>