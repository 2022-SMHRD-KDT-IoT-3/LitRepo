package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	BoardDTO bdto = null;
	int cnt = 0;
	
	// DB conn�޼ҵ�
	public void dbconn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";// ����!
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
	
	public int writeBoard(BoardDTO dto) {
		
		
		dbconn();
		
		try {
			
			String sql = "INSERT INTO board_info VALUES(board_info_seq.nextval, ?, ?, ?, sysdate, ?, default, ?)"; //�ۼ��ؾ� �� �κ�
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getArticle_title());
			psmt.setString(2, dto.getArticle_content());
			psmt.setString(3, dto.getArticle_file());
			psmt.setString(4, dto.getMem_id());
			if(dto.getArticle_type().equals("free")) {
				psmt.setString(5, "F");
			}else if(dto.getArticle_type().equals("q&a")) {
				psmt.setString(5, "Q");
			}else if(dto.getArticle_type().equals("infomation")) {
				psmt.setString(5, "I");
			}else if(dto.getArticle_type().equals("sleep")) {
				psmt.setString(5, "S");
			}
			
			cnt = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			
			dbclose();
			
			
		}
		
		return cnt;
		
	}
	
	// �Խù� ��� �޼ҵ�
	public ArrayList<BoardDTO> showBoard() {
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		dbconn();
		try {
			String sql = "SELECT * FROM board_info ORDER BY article_date";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int num = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String fileName = rs.getString(4);
				String date = rs.getString(5);
				String id = rs.getString(6);
				int article_cnt = rs.getInt(7);
				String article_type = rs.getString(8);
				
				//article_cnt++;
				
				BoardDTO dto = new BoardDTO(num, title, content, fileName, date, id, article_cnt, article_type);

				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			dbclose();
		}

		return list;
	}
	// �Խù� ī�װ� ��� �޼ҵ�
			public ArrayList<BoardDTO> showCategoryBoard(BoardDTO dto) {
				ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

				dbconn();
				try {
					String sql = "SELECT * FROM board_info where article_type=? ORDER BY article_date";

					psmt = conn.prepareStatement(sql);
					psmt.setString(1, dto.getArticle_type());
					rs = psmt.executeQuery();

					while (rs.next()) {
						int num = rs.getInt(1);
						String title = rs.getString(2);
						String content = rs.getString(3);
						String fileName = rs.getString(4);
						String date = rs.getString(5);
						String id = rs.getString(6);
						int article_cnt = rs.getInt(7);
						String article_type = rs.getString(8);
						
						//article_cnt++;
						
						BoardDTO dto1 = new BoardDTO(num, title, content, fileName, date, id, article_cnt, article_type);

						list.add(dto1);
					}

				} catch (Exception e) {
					e.printStackTrace();

				} finally {
					dbclose();
				}

				return list;
			}
		
	// �Խù� �����ϴ� �޼ҵ�
	public int updateBoard(BoardDTO dto) {
		dbconn();
		try {
			String sql = "update board_info set article_title=?, article_content=?, article_file=?, article_type=? where mem_id=? and article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getArticle_title());
			psmt.setString(2, dto.getArticle_content());
			psmt.setString(3, dto.getArticle_file());
			if(dto.getArticle_type().equals("free")) {
				psmt.setString(4, "F");
			}else if(dto.getArticle_type().equals("q&a")) {
				psmt.setString(4, "Q");
			}else if(dto.getArticle_type().equals("infomation")) {
				psmt.setString(4, "I");
			}else if(dto.getArticle_type().equals("sleep")) {
				psmt.setString(4, "S");
			}
			psmt.setString(5, dto.getMem_id());
			psmt.setInt(6, dto.getArticle_seq());
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// �Խù� �����ϴ� �޼ҵ�
	public int deleteBoard(int num) {
		dbconn();
		try {
			String sql="delete from board_info where article_seq= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			
			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
	// �Խù� ��ȸ�� �߰��� �޼ҵ�
	public int updateCount(int count, int seq) {
		dbconn();
		try {
			String sql = "update board_info set article_cnt=? where article_seq=?";
			psmt= conn.prepareStatement(sql);
			psmt.setInt(1, count);
			psmt.setInt(2, seq);
			
			cnt= psmt.executeUpdate();
			
			if(cnt>0) {
				System.out.println("��ȸ�� �߰� �Ϸ�");
			}else {
				System.out.println("��ȸ�� �߰� ����");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbclose();
		} return cnt;
	}
}
