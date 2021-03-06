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

import model.PhysicalDAO;
import model.PhysicalDTO;

@WebServlet("/DataReceiver")
public class DataReceiver extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	
		
		String temp = request.getParameter("temp");
		String humi = request.getParameter("humi");
		String sound = request.getParameter("sound");
		
	
		System.out.println("온도 : " + temp);
		System.out.println("습도 : " + humi);
		System.out.println("소리 : " + sound);

		
		PrintWriter out = response.getWriter();
		
		if(restoreMp31.SelectMusic != null) {

			out.print(restoreMp31.SelectMusic);
			restoreMp31.SelectMusic = null;
		
		} else if (restoreWarmer.warmerState != null){
			
			out.print(restoreWarmer.warmerState);
			restoreWarmer.warmerState = null;
		}
			
		
		else if(restoreColor.LEDPower == true){
			
			
			 out.print("{"+"\"Red\": "+restoreColor.red+",\r\n"+"\"Green\": "+restoreColor.green+",\r\n"+"\"Blue\": "+restoreColor.blue+"\r\n"+"}");
			 
			 restoreColor.LEDPower = false;
			
		}
		
		
		
		 
		 
		 
		 
		 // 알람 설정
		 if(timerService.alarmCheck == true) {
		 
		 Timer timer = new Timer();
			
			
			TimerTask task = new TimerTask(){

				@Override
				public void run() {				
						
						
						out.print("warmerOff");
						
						timerService.alarmCheck = false;
						
						
					} 
					
					
			 
				
				
			};
		
			
			timer.schedule(task, 5000);
		
			
		 }
		 
		 out.close();
	}

}
