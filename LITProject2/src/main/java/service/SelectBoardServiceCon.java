package service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Inter.Command;
import model.BoardDAO;
import model.BoardDTO;

public class SelectBoardServiceCon implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[SelectBoardServiceCon]");
		
		request.setCharacterEncoding("UTF-8");
		
		String type = request.getParameter("category");
		
		System.out.println("category : " + type);
		
		String page="";
		
		if(type.equals("A")) {
			page = "Board.jsp";
		}else{
			BoardDTO dto = new BoardDTO(type);
			BoardDAO dao = new BoardDAO();
			
			ArrayList<BoardDTO> list = dao.showCategoryBoard(dto);
			
			System.out.println("list ³»ºÎ : " + list);
			
			HttpSession session = request.getSession();
			session.setAttribute("list", list);
			page= "selectBoard.jsp";
		}
			
		return page;
	}

}
