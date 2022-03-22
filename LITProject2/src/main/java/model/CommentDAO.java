package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CommentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	CommentDTO cmtdto = null;
	// DB conn�޼ҵ�
	public void dbconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "campus_b_0310_2";
			String dbpw = "smhrd2";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// DB close �޼ҵ� 
	public void dbclose() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// ��� �ۼ� �޼ҵ�
	public int insertComment(CommentDTO dto) {
		dbconn();
		try {
			String sql = "insert into comment_info values(comment_info_SEQ.nextval,?,?,sysdate,?,default)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCmt_content());
			psmt.setInt(2, dto.getArticle_seq());
			psmt.setString(3, dto.getMem_id());
			psmt.setInt(4, dto.getLikes());
			
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// ��� ���� �޼ҵ�
	public int updateComment(CommentDTO dto) {
		dbconn();
		try {
			String sql = "update comment_info set cmt_content=?, cmt_date=sysdate where mem_id=? and article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCmt_content());
			psmt.setString(2, dto.getMem_id());
			psmt.setInt(3, dto.getArticle_seq());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// ��� ���� �޼ҵ�
	public int countComment(int article_seq) {
		dbconn();
		try {
			String sql = "select count(cmt_seq) as count from comment_info where article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, article_seq);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				cnt=rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	
	// ��� ���� �޼ҵ�
	public int deleteComment(CommentDTO dto) {
		dbconn();
		try {
			String sql = "delete from comment_info where cmt_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getCmt_seq());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// ���ƿ� �� ������Ʈ �޼ҵ�
	public int updatelikes(CommentDTO dto) {
		dbconn();
		try {
			String sql = "update comment_info set likes=? where cmt_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getLikes());
			psmt.setInt(2, dto.getCmt_seq());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// ��� ��� �޼ҵ�
	public List<CommentDTO> selecComment(int article_seq) {
		
		List<CommentDTO> cmtlist = new ArrayList<CommentDTO>();
		dbconn();
		try {
			String sql = "select * from comment_info where article_seq=? order by cmt_date";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, article_seq);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int cmt_seq = rs.getInt(1);
				article_seq = article_seq;
				String cmt_content = rs.getString(3);
				String cmt_date = rs.getString(4);
				String mem_id = rs.getString(5);
				int likes = rs.getInt(6);
				
				cmtdto = new CommentDTO(cmt_seq, article_seq, cmt_content, cmt_date, mem_id, likes);
				cmtlist.add(cmtdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cmtlist;
	}
}