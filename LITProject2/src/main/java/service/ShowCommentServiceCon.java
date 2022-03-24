package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Inter.Command;
import model.CommentDAO;
import model.CommentDTO;

public class ShowCommentServiceCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		int num = Integer.parseInt(request.getParameter("num"));
		PrintWriter out = response.getWriter();
		CommentDAO dao = new CommentDAO();
		List<CommentDTO> list = dao.selectComment(num);
		String json = "{\"replyList\":[";
		for(int i=0; i<list.size();i++) {
			String id = list.get(i).getMem_id();
			String content = list.get(i).getCmt_content();
			String date = list.get(i).getCmt_date();
			int reply_no = list.get(i).getCmt_seq();
			
			json += "[{\"id\":\""+id+"\"},";
			json += "{\"date\":\""+date+"\"},";
			json += "{\"content\":\""+content+"\"},";
			json += "{\"reply_no\":\""+reply_no+"\"}]";
			if(i != list.size()-1) {	// list의 맨 마지막 행을 제외한 나머지
				json += ",";			// 하나의 json이 끝날때마다 ,를 넣어줌
			}
		}
		json +="]}";
		out.print(json);
		return null;
	}
	
}
