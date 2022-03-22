package service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.MemberDAO;
import model.MemberDTO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		String birthday = request.getParameter("birthday");

		System.out.println(birthday);
		
		birthday = birthday.replace("-", "");
		
		System.out.println(birthday);

		MemberDTO dto = new MemberDTO(id, pw, nick, gender, birthday);
		MemberDAO dao = new MemberDAO();

		int cnt = dao.join(dto);

		return "main1.jsp";
	}

}
