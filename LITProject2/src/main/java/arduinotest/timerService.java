package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/timerService")
public class timerService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static int delay = 0;
	public static boolean alarmCheck = false;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String setTime = request.getParameter("setTime");
		String sysTime = request.getParameter("sysTime");
		
		
		System.out.println(setTime);
		System.out.println(sysTime);
		
		int set_hour = Integer.parseInt(setTime.substring(0, 2));
		int set_minute = Integer.parseInt(setTime.substring(3, 5));
		int sys_hour = Integer.parseInt(sysTime.substring(0, 2));
		int sys_minute = Integer.parseInt(sysTime.substring(3, 5));
		
		
		System.out.println(set_hour);
		System.out.println(set_minute);
		System.out.println(sys_hour);
		System.out.println(sys_minute);
		
		
		
		
		delay = ((set_hour - sys_hour) * 3600 + (set_minute - sys_minute) * 60) * 1000;
		alarmCheck = true;
		
		System.out.println(delay);
		
		
		
		
		
		
		
		
	}

}
