package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	BoardDTO bdto = null;
	int cnt = 0;
	
	// DB conn메소드
	public void dbconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";// 수정!
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
	
	public int writeBoard(BoardDTO dto) {
		
		
		dbconn();
		
		try {
			
			String sql = "INSERT INTO board_info VALUES(board_info_seq.nextval, ?, ?, ?, sysdate, ?, default, 'F')"; //작성해야 될 부분
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getArticle_title());
			psmt.setString(2, dto.getArticle_content());
			psmt.setString(3, dto.getArticle_file());
			psmt.setString(4, dto.getMem_id());
			
			cnt = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			
			dbclose();
			
			
		}
		
		return cnt;
		
	}
	
	public ArrayList<BoardDTO> showBoard() {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		dbconn();
		try {
			String sql = "SELECT * FROM board_info ORDER BY article_date DESC";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String fileName = rs.getString(4);
				String date = rs.getString(5);
				String id = rs.getString(6);
				int article_cnt = rs.getInt(7);
				String article_type = rs.getString(8);

				BoardDTO dto = new BoardDTO(num, title, content, fileName, date, id, article_cnt, article_type);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			dbclose();
		}

		return list;
	}
	
	
	
	
	
}
