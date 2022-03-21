package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
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

}
