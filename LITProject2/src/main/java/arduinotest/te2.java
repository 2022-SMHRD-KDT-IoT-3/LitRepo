package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/te2")
public class te2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
	      PrintWriter out = response.getWriter();
	      
	      String pluse = request.getParameter("rateValue");
	     
	      
	     System.out.println("½É¹Ú¼ö : "+pluse);
	     
	}

}
