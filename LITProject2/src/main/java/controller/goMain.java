package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDTO;

@WebServlet("/goMain")
public class goMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	
		//session ����
		
				HttpSession session = request.getSession();
				
				MemberDTO dto = (MemberDTO) session.getAttribute("info");
				 
				//�޼��� ���
				
//				if(dto != null) {
//					MessageDAO msgDao = new MessageDAO();
//					List<MessageDTO> msgList = msgDao.selectMsg(dto.getEmail());
//					
//					//List�� ��� ���� ����ä�� ������ �̵�
//					//forward();
//					// request scope �� �����Ѵ�.
//					
//					request.setAttribute("msgList", msgList);
//					
//					
//				} else {
//					
//				}
				
				//forward ������� �̵�
				RequestDispatcher rd = request.getRequestDispatcher("main1.jsp");
				
				rd.forward(request, response);
		
		
	
	}

}
