package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.CommentDAO;
import model.CommentDTO;

public class EditCommentServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[EditCommentServiceCon]");
		request.setCharacterEncoding("UTF-8");
		String content = request.getParameter("content");
		int num = Integer.parseInt(request.getParameter("num"));	// 댓글 시퀀스 번호 받아옴
		
		System.out.println("content : " + content);
		System.out.println("num : "     + num);
		
		CommentDTO dto = new CommentDTO(num, content);
		System.out.println("1차");
		CommentDAO dao = new CommentDAO();
		System.out.println("2차");
		
		int cnt = dao.updateComment(dto);
		if(cnt>0) {
			System.out.println("댓글 수정 완료");
		} else {
			System.out.println("댓글 수정 실패");
		}
		
		return null;
	}
	
	

}
