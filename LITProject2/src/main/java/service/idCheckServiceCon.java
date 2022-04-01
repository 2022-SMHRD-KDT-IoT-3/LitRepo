package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.MemberDAO;

public class idCheckServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		MemberDAO dao = new MemberDAO();
		
		PrintWriter out = response.getWriter();
		
		boolean check = dao.idCheck(id);
		
		System.out.println(check);
		
		
		if(check) {
			
			out.print(check);
		} 
		
		out.close();
		
		return null;
		
		
	}

	

	
	
	
	
}
