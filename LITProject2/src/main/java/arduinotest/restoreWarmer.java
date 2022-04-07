package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restoreWarmer")
public class restoreWarmer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public static String warmerState; 
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		
		warmerState = request.getParameter("warmerState");
	
		boolean check = true;
		
		PrintWriter out = response.getWriter();
		
		
		out.print(check);
	}

}
