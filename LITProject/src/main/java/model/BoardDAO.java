package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	// DB conn메소드
	public void dbconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin@";
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
	// 회원가입 메소드
	public int join(MemberDTO dto) {
		dbconn();
		try {
			String sql = "insert into mem_info values(?,?,?,?,?,?,?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_nick());
			psmt.setString(4, dto.getMem_gender());
			psmt.setString(5, dto.getMem_birthday());
			psmt.setString(6, dto.getMem_joindate());
			psmt.setString(7, dto.getMem_type());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		}return cnt;
	}
 
	// 회원수정 메소드
	public int update(MemberDTO dto) {
		dbclose();
		try {
			String sql = "update mem_info set pw=?, nick=?, gender=?, birthday=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_pw());
			psmt.setString(2, dto.getMem_nick());
			psmt.setString(3, dto.getMem_gender());
			psmt.setString(4, dto.getMem_birthday());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
}
