<%@page import="model.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDTO"%>
<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	int num = Integer.parseInt(request.getParameter("num"));
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> dto = dao.showBoard();
	session = request.getSession();
	ArrayList<BoardDTO> bdto = (ArrayList<BoardDTO>) session.getAttribute("board");
	MemberDTO sdto = (MemberDTO) session.getAttribute("info");
	%>
	<section>
		<h2>게시물</h2>
		<div id="showboard">
			<table>
				<tr>
					<td>제목</td>
					<td><%=dto.get(num).getArticle_title()%></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><%=dto.get(num).getMem_id()%></td>
				</tr>
				<tr>
					<td>조회수</td>
					<td><%=dto.get(num).getArticle_cnt()%></td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td><%=dto.get(num).getArticle_date()%></td>
				</tr>
				<tr>
					<td colspan="2">내용</td>
				</tr>
				<tr>
					<td colspan="2"><%=dto.get(num).getArticle_content()%><br>
						<img src="file/<%=dto.get(num).getArticle_file()%>"></td>
				</tr>

			
				<tr>
					<td colspan="2" align="center">
						<button id="" onclick="location.href='updateBoard.jsp'">글수정</button>

						<button id="deleteCon"
							onclick="location.href='DeleteBoardServiceCon.do?num=<%=dto.get(num).getArticle_seq()%>'">글
							삭제</button>
					</td>
				</tr>
			


				<tr>
					<td>댓글</td>
				</tr>
				<tr>
					<td>
						<form>
							<input type="hidden" name="num" id="num" value="<%=dto.get(num).getArticle_seq()%>"> 
							<input type="hidden" name="id" id="id" value="<%=sdto.getMem_id()%>">
							<textarea placeholder="댓글작성" name="coment" id="coment"></textarea>
							<input type="button" id="reply_btn" value="댓글 등록">
						</form>
					</td>
				</tr>
				<tr>
					<td id="replyList" name="num" value="<%= dto.get(num).getArticle_seq()%>"></td>
				</tr>
			</table>

		</div>
	</section>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<!-- <script type="text/javascript" src="JS/jquery-3.6.0.min.js"></script> -->
	<script type="text/javascript">
		$("#reply_btn").click(function() {
			if ($("#coment").val().trim() === "") {
				alert("댓글을 입력하세요.");
				$("#coment").val("").focus();
			} else {
				$.ajax({
					url : "SaveCommentServiceCon.do",
					type : "post",
					data : {
						num : $("#num").val(),
						id : $("#id").val(),
						coment : $("#coment").val()
					},
					success : function(cnt) {
						alert("댓글 등록 완료");
						$("reply").val("");
						
						getReply();
					},
					error : function() {
						alert("실패");
					}
				})
			}
		})
		
 		function getReply(){
			$.ajax({
				url : "ShowCommentServiceCon.do",
				type : "post",
				data : {
					num : $("#num").val()
				},
				success : function(json){	// ShowCommentServiceCon에서 json을 받아옴
					json = json.replace(/\n/gi,"\\r\\n");
				$("replyList").text("");	// 댓글 리스트 영역 초기화
				let obj = JSON.parse(json);	// json 문자열 파싱
				let replyList = obj.replyList;
				let output="";	// 댓글 목록을 누적하여 보여주기 위한 변수
				for(let i=0; i<replyList.length;i++){	// replyList는 이차원배열
					output+="<div >";
					for(let j=0; j<replyList[i].length; j++){
						let reply = replyList[i][j];	// 각 행의 각 행을 reply 변수에 넣어줌
						if(j==0){
							// user-id -> 사용자 아이콘
							output += "&nbsp;&nbsp;"+reply.id+"&nbsp;&nbsp;";	//&nbsp; -> 공백을 나타내는 문자
							
						} else if(j==1){
							output += "&nbsp;&nbsp;"+reply.date;
							output += "&nbsp;&nbsp;&nbsp;&nbsp;<button>댓글수정</button>&nbsp;&nbsp;";
							output += "&nbsp;&nbsp;<button>댓글 삭제</button>&nbsp;&nbsp;"
						} else if(j==2){
							output += "<pre>"+reply.content+"</pre></div>"
						}
						
					}
				}
				$("#replyList").html(output);
				}
			})
		}
		getReply();
	</script>



	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


</body>
</html>