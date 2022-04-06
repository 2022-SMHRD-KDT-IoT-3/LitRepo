package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import model.MemberDAO;
import model.MemberDTO;

public class JoinChangeServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[JoinChangeServiceCon]");
		
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");
		
		System.out.println("nick : " + nick);
		System.out.println("birthday : " + birthday);
		
		MemberDTO dto = new MemberDTO(id, pw, nick, gender, birthday);
		
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.update(dto);
		
		if(cnt>0) {
			System.out.println("회원정보 수정완료");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("info", dto);
			
		}else {
			System.out.println("회원정보 수정 실패");
		}
		
		return "mypage.jsp";
	}

}
