package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EnvironmentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	// DB conn메소드
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
	
	public int envInsert(String Temp, String humi) {
		
		dbconn();
		
		try {
			String sql = "INSERT INTO env_info VALUES(env_info_seq.nextval, ?, ?, sysdate, 'mem_id 01')";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, Temp);
			psmt.setString(2, humi);
			
			cnt = psmt.executeUpdate();
			
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
			dbclose();
			
		}
		
		return cnt;
		
		
	}
	
}
