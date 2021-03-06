package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restoreColor")
public class restoreColor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static int red;
	public static int green;
	public static int blue;
	public static boolean LEDPower = false;
	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		String color = request.getParameter("color");

		System.out.println(color);

		String red1 = "";
		String green1 = "";
		String blue1 = "";

		String hexacolor = color.replace("#", "");

		System.out.println(hexacolor);

		String[] rgb = hexacolor.split("");

		red1 = rgb[0] + rgb[1];
		green1 = rgb[2] + rgb[3];
		blue1 = rgb[4] + rgb[5];

		if(red1.equals("00") && green1.equals("00") && blue1.equals("00")) {
			LEDPower = true;
			
			red = 0;
			green = 0;
			blue = 0;
			
			
		} else {
			
			LEDPower = true;
			
			red = Integer.parseInt(red1, 16);
			green = Integer.parseInt(green1, 16);
			blue = Integer.parseInt(blue1, 16);
			
			
		}

		
		System.out.println(red);
		System.out.println(green);
		System.out.println(blue);
			
		
		
	}

}
