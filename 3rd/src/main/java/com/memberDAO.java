package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.memberVO;

public class memberDAO {
	Connection conn = null;
	PreparedStatement psmt = null;

	int cnt = 0;
	String sql = "";
	memberVO vo = null;
	ResultSet rs = null;

	public void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@127.0.0.1:1521";
			String dbid = "hr";
			String dbpw = "hr";
			conn = DriverManager.getConnection(url, dbid, dbpw);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void close() {
		
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt!=null) {
				psmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		
		}
	}

	public int Join(String id, String name, String pw, String sns) {

		try {
			getConn();

			sql = "insert into user_p values(user_no.NEXTVAL,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, name);
			psmt.setString(3, pw);
			psmt.setString(4, sns);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public int Update(String id, String name, String pw, String sns) {

		// UpdateCon에서 DB와 관련된 코드를 분리하시오.
		try {
			getConn();

			sql = "update user_p set user_name=?, user_pw=?, sns_link=? where user_id = ?";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, name);
			psmt.setString(2, pw);
			psmt.setString(3, sns);
			psmt.setString(4, id);

			cnt = psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return cnt;
	}

	public int Delete(String id) {
		

		try {
			getConn();

			sql = "Delete from user_p where user_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		}finally {
			close();
		}
		return cnt;
	}

	public memberVO Login(String id, String pw) {
		try {
			getConn();

			sql = "Select * from user_p where user_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();

			if (rs.next()) {
				int user_no = rs.getInt(1);
				String getid = rs.getString(2);
				String name = rs.getString(3);
				String getpw = rs.getString(4);//pw
				String sns = rs.getString(5);

				if (pw.equals(getpw)) {

					vo = new memberVO(user_no, getid, name, getpw, sns);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}

	public ArrayList<memberVO> select() {
		ArrayList<memberVO> arr = new ArrayList<memberVO>();
		try {
			getConn();
			sql = "select * from user_p";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				String getid = rs.getString(2);
				String name = rs.getString(3);
				String getpw = rs.getString(4);//pw
				String sns = rs.getString(5);
				
				System.out.println("sns 확인 :" + sns);
				
				vo = new memberVO(getid, name, getpw, sns);

				arr.add(vo);
				
				System.out.println("리스트 크기 : " + arr.size());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return arr;
	}
	public boolean idCheckDAO(String id) {
		
		boolean idC = true;
		
		try {
			getConn();

			sql = "Select * from user_p where user_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();

			if (rs.next()) {
				//아이디가 있다
				idC = true;
			}else {
				//아이디가 없다.
				idC = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return idC;
	}


}
