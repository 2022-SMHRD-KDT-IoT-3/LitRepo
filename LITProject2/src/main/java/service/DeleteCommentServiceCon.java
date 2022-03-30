package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.CommentDAO;
import model.CommentDTO;

public class DeleteCommentServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[DeleteCommentServiceCon]");
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("num : " + num);
		
		CommentDTO dto = new CommentDTO(num);
		CommentDAO dao = new CommentDAO();
		int cnt = dao.deleteComment(dto);
		
		if(cnt>0) {
			System.out.println("댓글 삭제 완료");
		}else {
			System.out.println("댓글 삭제 실패");
		}
		return null;
	}

}
