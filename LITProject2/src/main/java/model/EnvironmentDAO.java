package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EnvironmentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	EnvironmentDTO edto = null;
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
	
	
	//가장 최근의 온도 가져오기
	
	public EnvironmentDTO SelectTempHumi(String mem_id) {
		
		dbconn();
		
		try {
			String sql = " SELECT env_temperature, env_humidity, to_char(env_date, 'HH:MM:DD HH24:MI:SS')"
					+ " FROM env_info"
					+ " WHERE env_date = (SELECT max(env_date) FROM env_info WHERE mem_id = ?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, mem_id);
			
			rs = psmt.executeQuery();
			
			
			if(rs.next()) {
				int temp = rs.getInt(1);
				int humi = rs.getInt(2);
				String date = rs.getString(3);
				
				edto = new EnvironmentDTO(temp, humi, date);
				
				
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
			dbclose();
			
		}
		
		
		
		
		return edto != null? edto : null;
	}
	
	
}
