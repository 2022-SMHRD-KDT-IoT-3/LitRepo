package service;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Inter.Command;
import model.BoardDAO;
import model.BoardDTO;

public class WriteBoardService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			request.setCharacterEncoding("UTF-8");
			
			String savePath = request.getServletContext().getRealPath("./file");
			
			int maxsize = 10 * 1024 * 1024; //10MB
			
			String encoding = "UTF-8";
			
			System.out.println(savePath);
			
			DefaultFileRenamePolicy filePolicy = new DefaultFileRenamePolicy();
			
			
			MultipartRequest multi = new MultipartRequest(request, savePath, maxsize, encoding, filePolicy);
			
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer"); // 세션 작성자 이름!!!!
			String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "UTF-8");
			String content = multi.getParameter("content");
			
//			System.out.println(title);
//			System.out.println(writer);
//			System.out.println(fileName);
//			System.out.println(content);
			
			BoardDTO dto = new BoardDTO(title, content, fileName, writer);
			
			int cnt = new BoardDAO().writeBoard(dto);
			
			
		
		return "main1.jsp";
	
	
	
	}

}
