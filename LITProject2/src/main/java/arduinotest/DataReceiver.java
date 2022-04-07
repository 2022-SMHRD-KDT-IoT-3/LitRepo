package arduinotest;

import java.io.IOException;
import java.io.PrintWriter;

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
		

		
		
		
		
		
		
		
	
		System.out.println("�µ� : " + temp);
		System.out.println("���� : " + humi);
		System.out.println("�Ҹ� : " + sound);

		
		PrintWriter out = response.getWriter();
		
		if(restoreMp31.SelectMusic != null) {

			out.print(restoreMp31.SelectMusic);
			restoreMp31.SelectMusic = null;
		
		} else if (restoreWarmer.warmerState != null){
			
			out.print(restoreWarmer.warmerState);
			restoreWarmer.warmerState = null;
		}
			
		
		else {
			
			
			 out.print("{"+"\"Red\" : "+restoreColor.red+",\r\n"+"\"Green\" :"+restoreColor.green+",\r\n"+"\"Blue\" : "+restoreColor.blue+"\r\n"+"}");
			
		}
		
		
		
		 
		 out.close();
	
	}

}
