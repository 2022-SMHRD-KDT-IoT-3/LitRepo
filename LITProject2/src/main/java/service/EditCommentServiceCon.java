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
		int num = Integer.parseInt(request.getParameter("num"));	// ��� ������ ��ȣ �޾ƿ�
		
		System.out.println("content : " + content);
		System.out.println("num : "     + num);
		
		CommentDTO dto = new CommentDTO(num, content);
		System.out.println("1��");
		CommentDAO dao = new CommentDAO();
		System.out.println("2��");
		
		int cnt = dao.updateComment(dto);
		if(cnt>0) {
			System.out.println("��� ���� �Ϸ�");
		} else {
			System.out.println("��� ���� ����");
		}
		
		return null;
	}
	
	

}
