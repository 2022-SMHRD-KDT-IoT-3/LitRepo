package service;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Inter.Command;
import model.BoardDAO;
import model.BoardDTO;
import model.MemberDTO;

public class UpdateBoardServiceCon implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[UpdateBoardServiceCon]");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		MemberDTO mdto = (MemberDTO) session.getAttribute("info");	// session에 저장된 id
		
//		int num = Integer.parseInt(request.getParameter("num"));
//		System.out.println("num");
		
		
		String savePath = request.getServletContext().getRealPath("./file");
		
		int maxsize = 10 * 1024 * 1024; //10MB
		
		String encoding = "UTF-8";
		
		System.out.println(savePath);
		
		DefaultFileRenamePolicy filePolicy = new DefaultFileRenamePolicy();
		
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxsize, encoding, filePolicy);
		
		String title = multi.getParameter("title");
		String writer = mdto.getMem_id(); // 세션 작성자 이름!!!!
		String fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "UTF-8");
		String content = multi.getParameter("content");
		String num = multi.getParameter("num");
		int num1 = Integer.parseInt(num);
		
		System.out.println("num :"       + num1 );
		System.out.println("title : "    + title);
		System.out.println("writer : "   + writer);
		System.out.println("fileName : " + fileName);
		System.out.println("content : "  + content);
		
		// 각자의 게시판 글번호(목록)
		String article_num = multi.getParameter("article_num");
		
		
		
		
		//int num = Integer.parseInt(request.getParameter("num"));
		//System.out.println("num : " + num);
		
		String boardtype = multi.getParameter("boardtype");
		BoardDTO dto = new BoardDTO(num1,title, content, fileName, writer, boardtype);
		int cnt = new BoardDAO().updateBoard(dto);
		return "goShowBoard?num=" + num1 + "&article_num=" + article_num ;
	}
}
