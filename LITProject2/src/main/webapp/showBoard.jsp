<%@page import="model.CommentDTO"%>
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
	int num = Integer.parseInt(request.getParameter("article_num")); // 글 목록 번호
	BoardDAO dao = new BoardDAO();
	ArrayList<BoardDTO> dto = dao.showBoard();
	session = request.getSession();

	//ArrayList<BoardDTO> bdto = (ArrayList<BoardDTO>) session.getAttribute("board");

	MemberDTO sdto = (MemberDTO) session.getAttribute("info");
	ArrayList<CommentDTO> cmtlist = (ArrayList<CommentDTO>) request.getAttribute("cmtlist");
	
	// 게시물을 조회하면 db에 조회수가 1 추가..
	
	// 글 조회수
	int count = dto.get(num).getArticle_cnt()+1;
	// 글 시퀀스
	int seq = dto.get(num).getArticle_seq();
	// DB로 넘겨줄방법..
	int complete = dao.updateCount(count, seq);
	%>

	<input type="hidden" value="<%=sdto.getMem_id()%>" id="myId">

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
					<td><%= count %></td>
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
						<button type="button" onclick="location.href='Board.jsp'">글목록</button>
						<%
						if (dto != null) {
						%> <%
						if (dto.get(num).getMem_id().equals(sdto.getMem_id())) {
						%>
						<button id=""
							onclick="location.href='updateBoard.jsp?num=<%=dto.get(num).getArticle_seq()%>&article_num=<%=num%>'">글수정</button>

						<button id="deleteCon"
							onclick="location.href='DeleteBoardServiceCon.do?num=<%=dto.get(num).getArticle_seq()%>'">글삭제</button>
						<%
						}
						}
						%>
					</td>
				</tr>



				<tr>
					<td>댓글</td>
				</tr>
				<tr>
					<td colspan="2">
						<form>
							<input type="hidden" name="num" id="num"
								value="<%=dto.get(num).getArticle_seq()%>"> <input
								type="hidden" name="id" id="id" value="<%=sdto.getMem_id()%>">
							<textarea placeholder="댓글작성" name="coment" id="coment"></textarea>
							<input type="button" id="reply_btn" value="댓글 등록">
						</form>
					</td>
				</tr>
				<tr>
					<td id="replyList" name="replyList"
						value="<%=dto.get(num).getArticle_seq()%>"></td>
				</tr>
			</table>

		</div>
	</section>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<!-- <script type="text/javascript" src="JS/jquery-3.6.0.min.js"></script> -->
	<script type="text/javascript">
		let replyList = null;
		let reply = null;
		let output = "";

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
						$("#coment").val("");

						getReply();
					},
					error : function() {
						alert("실패");
					}
				});
			}
		}); // function1 끝

		function getReply() {

			$.ajax({
						url : "ShowCommentServiceCon.do",
						type : "post",
						data : {
							num : $("#num").val()
						},
						async : false, // 비동기통신
						success : function(json) {
							// ShowCommentServiceCon에서 json을 받아옴
							var listlength = null;
							var reply_seq = null;
							var reply_content_text = null;
							var rid = '';
	
							json = json.replace(/\n/gi, "\\r\\n");
							$("#replyList").text(""); // 댓글 리스트 영역 초기화
							let obj = JSON.parse(json); // json 문자열 파싱
							replyList = obj.replyList;
							output = ""; // 댓글 목록을 누적하여 보여주기 위한 변수
							console.log(obj);
							var myId = $('#myId').val();

							listlength = replyList.length;

							for (let i = 0; i < replyList.length; i++) {
								/* replyList는 이차원배열 */
								output += "<div id='reply_no"+i+"'>";

								for (let j = 0; j < replyList[i].length; j++) {
									reply = replyList[i][j]; // 각 행의 각 행을 reply 변수에 넣어줌
									
									console.log("댓글작성" + reply.id);
									console.log("로그인아이디 : " + myId);

									/* output += "<div id='reply_no"+reply.reply_no+"'>"; */
									
									if (j == 0) {
										// user-id -> 사용자 아이콘
										console.log("댓글작성 내부" + reply.id);
										//output += "<input type='hidden' value='" + reply.id + "' id = 'reply.id_'>";
										output += "&nbsp;&nbsp;" + reply.id + "&nbsp;&nbsp;";
										//&nbsp; -> 공백을 나타내는 문자
										rid = reply.id

										console.log("reply.id : " + reply.id);

									} else if (j == 1) {
										output += "&nbsp;&nbsp;" + reply.date + "&nbsp;&nbsp;";
										//output += "<input type='hidden', value='" + reply.date + "'id='reply.date_'>";
										console.log("reply.date : "
												+ reply.date);
									}else if (j == 2) {
										output += "<pre class='cmt_before " +i + "' id='reply_content"+reply.reply_no+"' >" + reply.content + "</pre></div>";
										output += "<input type='hidden' value='" + reply.content + "' name='replyContent123'>";
										console.log("reply.content : " + reply.content);

										/* 댓글 수정 버튼 */
										console.log("reply.content : " + $('input[name=replyContent123]').val()); //왜 안되지..
										reply_content_text = reply.content;
										console.log(reply_content_text);
									} // big if
									else if (j == 3) {
										output += "<input type='hidden' value='" + reply.reply_no+ "' id = 'reply.no_'>";
										console.log("reply.reply_no : " + $("#reply.no_").val());

										reply_seq = reply.reply_no;

									}

						
								} // 2for
								console.log(rid)
									if (rid == myId) {
											
										console.log("들어오니");
										console.log(reply);
										console.log("시퀀스 번호 : " + i + "번째 " + reply_seq);

										output += "&nbsp;&nbsp;<button class='cmt_before tabActive" + i + "'  ' onClick='editBtn("+i+ ")' >댓글수정</button>&nbsp;&nbsp;";
										output += "&nbsp;&nbsp;"
										output += "<button id='deletereplyBtn" + i + "' class='cmt_before' data-reply-seq='" + reply_seq + "'>댓글 삭제</button>"
										output += "&nbsp;&nbsp;"

										output += "<div class='reply_edit_hidden" + i + "' style='display:none'>";
										output += "<div class = 'reply_edit_txt'>";
										output += "<input type='hidden' value='" + reply_seq+ "' id='reply_seq_num'>"
										output += "<textarea class='reply_editcnt' id='reply_editcnt" + i + "' name='reply_editcnt' placeholder='여러분의 소중한 댓글을 입력해주세요.' >" +replyList[i][2].content+ "</textarea></div>";
										output += "<div class='reply_edit_button'>";
										output += "<button class='reply_edit_cancel'>취소</button>";
										output += "<button onClick='editcompleteBtn(" + i + ",\"" + reply_seq + "\")' id='reply_editcnt_btn" + i + "' class='reply_editcntbtn tabActive" + i + "'>수정완료</button></div>";
										output += "</div>";
									
									
									} // 댓글 수정, 삭제 if문 
									$("#replyList").append(output);
									output = '';
									
									
							} // 1for

						},
						error : function() {
							alert("댓글 제공 실패");
						}

					})

			return replyList;

		}// getReply method end


		replyList = getReply();
		console.log("길이 : " + replyList.length);
		console.log("됐니??" + replyList[0][0].id);
		console.log("확인 : " + $('input[name=replyContent123]').val());
		
		
		function editBtn(i){
			$(".cmt_before" + i).hide();
			$(".reply_edit_hidden" + i).show();
		}
		function editcompleteBtn(i, reply_seq){
			$(".reply_edit_hidden" + i).hide();
			$(".cmt_before" + i).show();
			
			
		}
		
		
		
		getReply();
		
		function editcompleteBtn(i,reply_seq){
			let num = i;
			console.log(i)
			var content = $(".reply_editcnt").val();
			console.log("replySeq 값 : " + reply_seq);
			console.log(content);
			$.ajax({
				url : "EditCommentServiceCon.do",
				type : "post",
				data : {
					num : reply_seq,
					content : content
				},
				success : function() {
					location.reload(); /* 현재 페이지 새로 고침 */
				},
			})
		};	// edit reply method end
		
		
		for(let i=0; i<replyList.length;i++){
		$(document).on("click","#deletereplyBtn"+i,function(){
			
			var replySeq = $(this).data("replySeq");
			console.log("function 값 : " + replySeq)
			if (confirm('정말 삭제하시겠습니까?') == true) {
				$.ajax({
					url : "DeleteCommentServiceCon.do",
					type : "post",
					data : {
						num : replySeq
					},
					success : function() {
						location.reload();
					},
				})
			}
			
		})
		};	// editreplyBtn method end

	</script>



	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>


</body>
</html>