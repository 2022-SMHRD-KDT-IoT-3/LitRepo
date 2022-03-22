package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import model.MemberDAO;
import model.MemberDTO;

public class LoginServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");


		MemberDTO dto = new MemberDAO().login(id, pw);

		
		if(dto != null) {
			
			System.out.println("�α��� ����");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("info", dto);
			
			
		} else {
			
			System.out.println("�α��� ����");
			
		}
		
		
		
		return "goMain";
	}

}
