package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.comVO;

public class comDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	String sql = "";
	int cnt = 0;

	public void getConn() {

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			
			if(conn!=null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public int insertMessge(comVO vo) {
		
		getConn();
		
		sql = "insert into web_message values(post_no.nextval, ?, ?, ?, sysdate, ?, ?, ? )";
		
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getPost_title());
			psmt.setString(2, vo.getContents());
			psmt.setString(3, vo.getUser_id());
			psmt.setFloat(4, vo.getStar_review());
			psmt.setInt(5, vo.getLike_counts());
			psmt.setInt(6, vo.getPhoto_no());
			
			cnt = psmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return cnt;
		
	}
	
//	public ArrayList<messageVO> showMessage(memberVO login) {
//		
//		ArrayList<messageVO> list = new ArrayList<messageVO>();
//		getConn();
//		sql = "select * from web_message where receiveEmail = ?";
//		
//		try {
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, login.getEmail());
//			rs = psmt.executeQuery();
//			while(rs.next()) {
//				int num = rs.getInt(1);
//				String sendName = rs.getString(2);
//				String receiveEmail = rs.getString(3);
//				String message = rs.getString(4);
//				String day = rs.getString(5);
//				
//				messageVO vo = new messageVO(num, sendName, receiveEmail, message, day);
//				list.add(vo);
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		} return list;
//	}
//	
//	public int deleteMessage(memberVO vo) {
//		
//		getConn();
//		sql = "delete from web_message where receiveEmail = ?";
//		
//		try {
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, vo.getEmail());
//			cnt = psmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		} 
//		return cnt;
//	}
	
	

	
	
}