package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restoreMp31")
public class restoreMp31 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	public String volumeUp = "+";
	public String volumeDown = "-";
	public static String SelectMusic = null;
	public String StopMusic = "s";
	public String PauseContinue = "p";
	
	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			
			SelectMusic = request.getParameter("select");
	
			boolean check = true;
			
			PrintWriter out = response.getWriter();
			
			
			out.print(check);
			
	
	
	}

}
