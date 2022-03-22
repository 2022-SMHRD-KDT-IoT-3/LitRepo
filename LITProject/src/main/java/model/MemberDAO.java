package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	MemberDTO dto = null;
	
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
	// 아이디 중복체크 메소드
	public boolean idCheck(String id) {
		boolean result=false;	// 중복되지 X
		dbconn();
		try {
			String sql = "select mem_id from mem_info where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return result;
	}
	
	// 회원수정 메소드
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
	
	// 회원정보 삭제 메소드
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
	// 로그인 메소드
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
}
