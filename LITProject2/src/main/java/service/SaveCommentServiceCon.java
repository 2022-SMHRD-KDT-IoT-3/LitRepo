package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import model.CommentDAO;
import model.CommentDTO;

public class SaveCommentServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[SaveCommentServiceCon]");
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num")); 
		String id = request.getParameter("id");
		String coment = request.getParameter("coment");
				
		
		CommentDTO dto = new CommentDTO(num, coment, id);
		
		CommentDAO dao = new CommentDAO();
		
		int cnt = dao.insertComment(dto);
		
		PrintWriter out = response.getWriter();
		
		out.print(cnt);
		
		return null;
	}

}
