package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import service.DeleteBoardServiceCon;
import service.DeleteCommentServiceCon;
import service.EditCommentServiceCon;
import service.JoinService;
import service.LoginServiceCon;
import service.LogoutServiceCon;
import service.SaveCommentServiceCon;
import service.ShowCommentServiceCon;
import service.UpdateBoardServiceCon;
import service.WriteBoardService;
import service.idCheckServiceCon;

@WebServlet("*.do")
public class Frontcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String nextPage = "";
		Command com = null;
		
		System.out.println("[frontController 실행]");
		
		// 어떤 기능을 수행하는 문자열 인지 판단.
		
		String uri = request.getRequestURI();
	
		System.out.println(uri);
		
		String path = request.getContextPath();
		System.out.println(path);
		
		String command = uri.substring(path.length() + 1);
		
		System.out.println(command);
		
		
		
		if(command.equals("WriteBoardService.do")) {
				
			com = new WriteBoardService();
			nextPage = com.execute(request, response);
			
			
		} else if(command.equals("JoinServiceCon.do")) {
			
			com = new JoinService();
			nextPage = com.execute(request, response);
			
		} else if(command.equals("LoginServiceCon.do")) {
			
			com = new LoginServiceCon();
			nextPage = com.execute(request, response);
			
		} else if(command.equals("DeleteBoardServiceCon.do")) {
			com = new DeleteBoardServiceCon();
			nextPage = com.execute(request, response);
			
		} else if(command.equals("UpdateBoardServiceCon.do")) {
			com = new UpdateBoardServiceCon();
			nextPage = com.execute(request, response);
		} else if(command.equals("SaveCommentServiceCon.do")) {
			com = new SaveCommentServiceCon();
			nextPage = com.execute(request, response);
		} else if (command.equals("ShowCommentServiceCon.do")) {
			com = new ShowCommentServiceCon();
			nextPage = com.execute(request, response);
		} else if (command.equals("LogoutServiceCon.do")) {
			com = new LogoutServiceCon();
			nextPage = com.execute(request, response);
			
			
		} else if (command.equals("EditCommentServiceCon.do")) {
			com = new EditCommentServiceCon();
			nextPage = com.execute(request, response);
		} else if (command.equals("DeleteCommentServiceCon.do")) {
			com = new DeleteCommentServiceCon();
			nextPage = com.execute(request, response);
		} else if (command.equals("idCheckServiceCon.do")) {
			com = new idCheckServiceCon();
			
			nextPage = com.execute(request, response);
			
		}
		
		
		
		
		if(nextPage != null) {
			response.sendRedirect(nextPage);
		}
	
	}

}
