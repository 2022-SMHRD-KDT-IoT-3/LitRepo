package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EnvironmentDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	EnvironmentDTO envdto = null;
	
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
	// DB�� ȯ�� ������ ����
	public int insertEnv(int temp, int humi, String id) {
		dbconn();
		try {
			String sql = "insert into env_info values(env_info_SEQ.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, temp);
			psmt.setInt(2, humi);
			psmt.setString(3, id);
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// ȯ�� ������ ���
	public List<EnvironmentDTO> selectEnv(String id){
		List<EnvironmentDTO> envlist = new ArrayList<EnvironmentDTO>();
		dbconn();
		try {
			String sql = "select * from env_info where mem_id=? order by env_date";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				int temp = rs.getInt(2);
				int humid = rs.getInt(3);
				String env_date = rs.getString(4);
				id = id;
				
				envdto = new EnvironmentDTO(num, temp, humid, env_date, id);
				envlist.add(envdto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return envlist;
	}
}
