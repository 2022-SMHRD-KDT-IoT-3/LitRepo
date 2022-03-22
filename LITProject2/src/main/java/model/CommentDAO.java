package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CommentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	// DB conn메소드
	public void dbconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "";
			String dbid = "campus_b_0310_2";
			String dbpw = "smhrd2";
			
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// DB close 메소드
	public void dbclose() {
		try {
			if(rs != null) rs.close();
			if(psmt != null) psmt.close();
			if(conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 댓글 작성 메소드
	public int insertComment(CommentDTO dto) {
		dbconn();
		try {
			String sql = "insert into comment_info values(cmt_seq.nextval,?,sysdate,?,?) where article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCmt_content());
			psmt.setString(2, dto.getMem_id());
			psmt.setInt(3, dto.getLikes());
			psmt.setInt(4, dto.getArticle_seq());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
}
