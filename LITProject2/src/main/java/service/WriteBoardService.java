package service;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Inter.Command;
import model.BoardDAO;
import model.BoardDTO;
import model.MemberDTO;

public class WriteBoardService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			System.out.println("[WriteBoardService]");
		
			request.setCharacterEncoding("UTF-8");
			
			
			HttpSession session = request.getSession();
			MemberDTO dto1 = (MemberDTO) session.getAttribute("info");
			System.out.println(dto1.getMem_id());
			
			
			String savePath = request.getServletContext().getRealPath("./file");
			
			int maxsize = 10 * 1024 * 1024; //10MB
			
			String encoding = "UTF-8";
			
			System.out.println(savePath);
			
			DefaultFileRenamePolicy filePolicy = new DefaultFileRenamePolicy();
			
			
			MultipartRequest multi = new MultipartRequest(request, savePath, maxsize, encoding, filePolicy);
			
			String title = multi.getParameter("title");
			String writer = dto1.getMem_id(); // 세션 작성자 이름!!!!
			String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "UTF-8");
			String content = multi.getParameter("content");
			
			String boardtype = multi.getParameter("boardtype");
			System.out.println("title : "     + title);
			System.out.println("writer : "    + writer);
			System.out.println("fileName : "  + fileName);
			System.out.println("content : "   + content);
			System.out.println("boardtype : " + boardtype);
//			System.out.println(title);
//			System.out.println(writer);
//			System.out.println(fileName);
//			System.out.println(content);
			
			BoardDTO dto = new BoardDTO(title, content, fileName, writer, boardtype);
			
			int cnt = new BoardDAO().writeBoard(dto);
			
			
		
		return "Board.jsp";
	
	
	
	}

}
