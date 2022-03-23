package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EnvironmentDAO;

@WebServlet("/te01")
public class te01 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      
	      String Temp = request.getParameter("Temp");
	      String Humi = request.getParameter("Humi");
	      
	      Temp = Temp.replace(".00", ".0");
	      Humi = Humi.replace(".00", ".0");
	      
	      
	     System.out.println("�µ� : "+Temp+"*C");
	     System.out.println("���� : "+Humi+"%");

	     
	     EnvironmentDAO dao = new EnvironmentDAO();
	     
	     int cnt = dao.envInsert(Temp, Humi);
	     	
	     if(cnt > 0) {
	    	 System.out.println("db���� ����");
	    	 
	    	 
	     } else {
	    	 System.out.println("db���� ����");
	     }


	}
}
