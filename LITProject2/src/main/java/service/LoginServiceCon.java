package service;

import java.io.IOException;
import java.io.PrintWriter;

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
		
		PrintWriter out = response.getWriter();
		
		boolean check = true;
		

		
		if(dto != null) {
			
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("info", dto);
			
			out.print(check);
			
			
			
		} else {
			
			System.out.println("로그인 실패");
			
			check = false;
			
			out.print(check);

		}
		
		out.close();
		
		return null;
	}

}
