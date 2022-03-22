package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/te01")
public class te01 extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      
	      String Temp = request.getParameter("Temp");
	      String Humi = request.getParameter("Humi");
	      
	     System.out.println("온도 : "+Temp+"*C");
	     System.out.println("습도 : "+Humi+"%");


	}
}
