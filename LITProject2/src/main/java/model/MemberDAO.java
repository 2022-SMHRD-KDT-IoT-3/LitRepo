package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	MemberDTO dto = null;
	
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
	// ȸ������ �޼ҵ�
	public int join(MemberDTO dto) {
		dbconn();
		try {
			String sql = "insert into mem_info values(?,?,?,?,?,sysdate,default)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_nick());
			psmt.setString(4, dto.getMem_gender());
			psmt.setString(5, dto.getMem_birthday());
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		}return cnt;
	}
	// ���̵� �ߺ�üũ �޼ҵ�
	public boolean idCheck(String id) {
		boolean result=false;	// �ߺ����� X
		dbconn();
		try {
			String sql = "select mem_id from mem_info where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = true;	// �ߺ��� ���̵� ���� ��� true
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return result;
	}
	
	// ȸ������ �޼ҵ�
	public int update(MemberDTO dto) {
		dbclose();
		try {
			String sql = "update mem_info set mem_pw=?, mem_nick=?, mem_gender=?, mem_birthday=? where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_pw());
			psmt.setString(2, dto.getMem_nick());
			psmt.setString(3, dto.getMem_gender());
			psmt.setString(4, dto.getMem_birthday());
			psmt.setString(5, dto.getMem_id());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	
	// ȸ������ ���� �޼ҵ�
	public int delete(String id) {
		dbconn();
		try {
			String sql = "delete from mem_info where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// �α��� �޼ҵ� - �α��� �� ȯ���մϴ� �޼��� ��¿� ����ϱ� ����
	public MemberDTO login(String id, String pw) {
		dbconn();
		try {
			String sql = "select * from mem_info where mem_id=? and mem_pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				id = rs.getString(1);
				pw = rs.getString(2);
				String nick = rs.getString(3);
				dto = new MemberDTO(id, pw, nick);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return dto;
	}
	// ȸ������ ��ü ��� �޼ҵ�
	public List<MemberDTO> selectMem(String id){
		List<MemberDTO> memlist = new ArrayList<MemberDTO>();
		dbconn();
		try {
			String sql = "select * from mem_info";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				id = rs.getString("mem_id");
				String pw = rs.getString("mem_pw");
				String nick = rs.getString("mem_nick");
				String gender = rs.getString("mem_gender");
				String birthday = rs.getString("mem_birthday");
				String joindate = rs.getString("mem_joindate");
				String type = rs.getString("mem_type");
				
				dto = new MemberDTO(id, pw, nick, gender, birthday, joindate, type);
				memlist.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return memlist;
	}
}
