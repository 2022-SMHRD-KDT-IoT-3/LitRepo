package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PhysicalDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	PhysiclaDTO phydto = null;
	
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
	
	// DB에 측정 데이터 저장 메소드
	public int insertPhy(String id, int pulse, int stress) {
		dbconn();
		try {
			String sql = "insert into phy_info values(phy_info_SEQ.nextval,?,?,?,sysdate)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setInt(2, pulse);
			psmt.setInt(3, stress);
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// DB에 저장된 데이터 출력 메소드
	public List<PhysiclaDTO> selectPhy(String id){
		List<PhysiclaDTO> phylist = new ArrayList<PhysiclaDTO>();
		dbconn();
		try {
			String sql = "select * from phy_info where mem_id=? order by sensing_date";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				int num = rs.getInt(1);
				id = id;
				int pulse = rs.getInt(3);
				int stress = rs.getInt(4);
				String date = rs.getString(5);
				
				phydto = new PhysiclaDTO(num, id, pulse, stress, date);
				phylist.add(phydto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return phylist;
		
	}
}
