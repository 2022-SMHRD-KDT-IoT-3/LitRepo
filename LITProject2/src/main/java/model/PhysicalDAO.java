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
	PhysicalDTO phydto = null;
	
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
	public List<PhysicalDTO> selectPhy(String id){
		List<PhysicalDTO> phylist = new ArrayList<PhysicalDTO>();
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
				
				phydto = new PhysicalDTO(num, id, pulse, stress, date);
				phylist.add(phydto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return phylist;
		
	}
	
	// BPM 평균값 INSERT
	public int insertBPM(int BPMaverage) {
		
		dbconn();
		try {
			String sql = "INSERT INTO phy_info VALUES(phy_info_seq.nextval, 'asfd', ?, 12.3, sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, BPMaverage);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
			
		} finally {
			dbclose();
			
		}
		
		
		return cnt;	
		
	}
	
	//아이디에 해당되는 심박 리스트 가져오기
	public List<PhysicalDTO> selectPhysicalInfo(String mem_id){
		List<PhysicalDTO> list = new ArrayList<PhysicalDTO>();
		dbconn();
		
		try {
			String sql = "SELECT sensing_seq, mem_id, sensing_pulse, to_char(sensing_date, 'YYYY-MM-DD HH24:MI:SS') FROM phy_info WHERE mem_id = ?";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, mem_id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int sensing_seq = rs.getInt(1);
				String id = rs.getString(2);
				int sensing_pulse = rs.getInt(3);
				int sensing_stress = rs.getInt(4);
				String sensing_date = rs.getString(5);
				
				
				PhysicalDTO dto = new PhysicalDTO(sensing_seq, mem_id, sensing_pulse, sensing_stress, sensing_date);
				
				list.add(dto);
			}
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		
		} finally {
			dbclose();
			
			
		}
		
		return list;
		
	}
	
	
	
	//아이디에 해당되는 시간당 심박 리스트 가져오기
	public List<PhysicalDTO> SelectBPMPerHour(String mem_id){
		List<PhysicalDTO> list = new ArrayList<PhysicalDTO>();
		
		
		dbconn();
		
		try {
			String sql = "SELECT to_char(sensing_date, 'yyyy/mm/dd hh24'), round(avg(sensing_pulse))"
					+ " FROM phy_info"
					+ " WHERE to_char(sensing_date, 'yyyy/mm/dd') = to_char(sysdate, 'yyyy/mm/dd')"
					+ " AND mem_id = ?"
					+ " GROUP BY to_char(sensing_date, 'yyyy/mm/dd hh24')"
					+ " ORDER BY to_char(sensing_date, 'yyyy/mm/dd hh24')";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, mem_id);
			
			rs = psmt.executeQuery();
			
			
			System.out.println(rs);
			
			while(rs.next()) {
				String BPMHour = rs.getString(1);
				int BPMavg = rs.getInt(2);
				
				PhysicalDTO dto = new PhysicalDTO(BPMHour, BPMavg);
				
				
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
