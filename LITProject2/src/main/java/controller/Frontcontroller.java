package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import service.WriteBoardService;

@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nextPage = "";
		Command com = null;
		
		System.out.println("[frontController ����]");
		
		// � ����� �����ϴ� ���ڿ� ���� �Ǵ�.
		
		String uri = request.getRequestURI();
	
		System.out.println(uri);
		
		String path = request.getContextPath();
		System.out.println(path);
		
		String command = uri.substring(path.length() + 1);
		
		System.out.println(command);
		
		
		
		if(command.equals("WriteBoardService.do")) {
				
			com = new WriteBoardService();
			nextPage = com.execute(request, response);
			
			
		}
		
		
		
		
		if(nextPage != null) {
			response.sendRedirect(nextPage);
		}
	
	}

}