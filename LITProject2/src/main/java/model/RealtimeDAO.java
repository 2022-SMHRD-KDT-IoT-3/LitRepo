package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RealtimeDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	RealtimeDTO rtdto = null;
	
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
	// DB에 실시간 정보 저장
	public int insertRt(String id, int pulse, int decibel) {
		dbconn();
		try {
			String sql = "insert into rt_info values(rt_info_SEQ.nextval, ?,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setInt(2, pulse);
			psmt.setInt(3, decibel);
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// 실시간 정보 출력
	public List<RealtimeDTO> selectRt(String id){
		List<RealtimeDTO> rtlist = new ArrayList<RealtimeDTO>();
		dbconn();
		try {
			String sql = "select * from rt_info where mem_id = ? order by rt_datetime";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int num = rs.getInt(1);
				id = id;
				int pulse = rs.getInt(3);
				int decibel = rs.getInt(4);
				String date = rs.getString(5);
				
				rtdto = new RealtimeDTO(num, id, pulse, decibel, date);
				rtlist.add(rtdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return rtlist;
	}
}
