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
		System.out.println("[DeleteBoardServiceCon]");
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(num);
		
		HttpSession session = request.getSession();

		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		System.out.println(dto.getMem_id());

		BoardDAO dao = new BoardDAO();
		int cnt = dao.deleteBoard(num);
		
		if(cnt>0) {
			System.out.println("글 삭제 완료");
		}else {
			System.out.println("글 삭제 실패");
		}

		return "Board.jsp";

	}

}
