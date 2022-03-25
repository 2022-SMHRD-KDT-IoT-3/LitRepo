package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BoardDAO;
import model.BoardDTO;
import model.MemberDTO;

@WebServlet("/goShowBoard")
public class goShowBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//session 정보
		
		HttpSession session = request.getSession();
		
		String num = request.getParameter("num");
		String article_num = request.getParameter("article_num");
		
		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		 
		//메세지 출력
		
//		if(dto != null) {
//			MessageDAO msgDao = new MessageDAO();
//			List<MessageDTO> msgList = msgDao.selectMsg(dto.getEmail());
//			
//			//List에 담긴 정보 가진채로 페이지 이동
//			//forward();
//			// request scope 에 저장한다.
//			
//			request.setAttribute("msgList", msgList);
//			
//			
//		} else {
//			
//		}
		
		
//		
//		if(dto != null) {
//			BoardDAO dao = new BoardDAO();
//			
//			ArrayList<BoardDTO> bdto = dao.showBoard();
//			
//			HttpSession sessionBoard = request.getSession();
//			
//			sessionBoard.setAttribute("board", bdto);
//			
//		}
		
		//forward 방식으로 이동
		RequestDispatcher rd = request.getRequestDispatcher("showBoard.jsp?num="+ num + "article_num" + article_num);
		
		rd.forward(request, response);
	
	
	
	}

}
