package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import model.BoardDAO;
import model.CommentDAO;
import model.MemberDTO;

public class DeleteBoardServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		HttpSession session = request.getSession();

		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		System.out.println(dto.getMem_id());

		CommentDAO dao1 = new CommentDAO();
		int cnt1 = dao1.deleteBoardComment(num);
		System.out.println(cnt1);
		if (cnt1 > 0) {
			System.out.println("글 삭제 전 댓글 삭제 완료");
			BoardDAO dao = new BoardDAO();
			int cnt = dao.deleteBoard(num);
			if (cnt > 0) {
				System.out.println("글 삭제 완료");
			} else {
				System.out.println("글 삭제 실패");
			}
		}else {
			System.out.println("글 삭제 전 댓글 삭제 실패");
		}
		
//		if (dto != null) {
//			CommentDAO dao1 = new CommentDAO();
//			int cnt1 = dao1.deleteBoardComment(num1, dto);
//			if (cnt1 > 0) {
//				System.out.println("글 삭제 전 댓글 삭제 완료");
//				BoardDAO dao = new BoardDAO();
//				int cnt = dao.deleteBoard(num1, dto);
//				if (cnt > 0) {
//					System.out.println("글 삭제 완료");
//				} else {
//					System.out.println("글 삭제 실패");
//				}
//			}else {
//				System.out.println("글 삭제 전 댓글 삭제 실패");
//			}
//		}

		return "Board.jsp";

	}

}
