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

public class UpdateBoardServiceCon implements Command {
	
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
		
		String boardtype = multi.getParameter("boardtype");
		BoardDTO dto = new BoardDTO(title, content, fileName, writer, boardtype);
		int cnt = new BoardDAO().updateBoard(dto);
		return "showBoard.jsp";
	}
}
