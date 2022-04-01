package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.MemberDAO;

public class DeleteServiceCon implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[DeleteServiceCon]");
		String ID = request.getParameter("id");

		MemberDAO dao = new MemberDAO();
		int cnt = dao.delete(ID);

		if (cnt > 0) {
			System.out.println("삭제 성공");
		} else {
			System.out.println("삭제 실패");
		}
		String nextpage = "select.jsp";
		return nextpage;

	}

}
