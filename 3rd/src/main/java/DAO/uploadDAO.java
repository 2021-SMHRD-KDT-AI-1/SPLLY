package DAO;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.uploadVO;

public class uploadDAO {
	
	private Connection con = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	private int result = 0 ;
	String sql = "";
	private static uploadDAO instance = new uploadDAO();
	uploadVO vo = null;
	int cnt = 0;
	
	
	public static uploadDAO getInstance() {
		return instance;
	}
	
	public void getConn() {

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			con = DriverManager.getConnection(url, dbid, dbpw);
			
			if(con!=null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() throws SQLException {
		if(rs!=null) rs.close();
		if(psmt!=null) psmt.close();
		if(con!=null) con.close();
	}
	

	public int uploadFile(String img, String photo_tag, String user_no) throws SQLException, ClassNotFoundException, IOException {
		getConn();
		
		String sql = "insert into user_photo values(photo_no.nextval,?,?,?)";
		
		psmt = con.prepareStatement(sql);
		psmt.setString(1, img);
		psmt.setString(2, photo_tag);
		psmt.setString(3, user_no);
		
		result = psmt.executeUpdate();
		
		close();
		
		return result;
	}
	public int Update(String photo_tag, int user_no) throws Exception {
		// UpdateCon에서 DB와 관련된 코드를 분리하시오
		try {

			getConn();

			sql = "update user_photo set photo_tag = ?, user_no = ? where photo_tag is null";
			// 컴마를 해주면 동시에 여러 값을 바꿀 수 있음

			psmt = con.prepareStatement(sql);

			psmt.setString(1, photo_tag); // vo.getPw()는 로그인을 했을 때 들어오는 데이터로 업데이트 하기 전의 데이터임 그냥 pw는 수정하고 싶다는 패스워드
			psmt.setInt(2, user_no);
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			close();
		}
		return cnt;
	}

	public ArrayList<uploadVO> selectAll() throws ClassNotFoundException, IOException, SQLException {
		
		ArrayList<uploadVO> arr = new ArrayList<>();
		try {
			getConn();
			
			sql = "select * from user_photo";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int getphoto_no = rs.getInt(1);
				String getimg = rs.getString(2);
				String getphoto_tag = rs.getString(3);
				int getuser_no = rs.getInt(4);
				
				vo = new uploadVO(getphoto_no, getimg, getphoto_tag, getuser_no);
				arr.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return arr;
	}

	public uploadVO SelectOne(int user_no) throws ClassNotFoundException, IOException, SQLException {
			
		try {
			getConn();
			
			sql = "select * from user_photo where user_no=?";
			psmt = con.prepareStatement(sql);
			psmt.setInt(1, user_no);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				
				int photo_no = rs.getInt(1);
				String img = rs.getString(2);
				String photo_tag = rs.getString(3);
				String getuser_no = rs.getString(4);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		} return vo;
		
		
		
		
	}
	
}
