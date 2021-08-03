package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.catalina.connector.Request;

import VO.PlayListVO;
import VO.SongVO;

public class SongDAO {
	Connection conn = null;
	PreparedStatement psmt = null;

	int cnt = 0;
	String sql = "";
	SongVO vo = null;
	PlayListVO vo1 =null;
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
	
	public ArrayList<SongVO> SongList(String name){
		ArrayList<SongVO> arr = new ArrayList<SongVO>();
		
		try {
			getConn();
			
			sql = "select r.song_no, s.song_name, s.singers, s.album_img\r\n"
					+ "from song s inner join play_song_relation r\r\n"
					+ "on r.playlist_name = ? and r.song_no = s.song_no ";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,name);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int num = rs.getInt(1);
				String song_name = rs.getString(2);
				String singers = rs.getString(3);
				String album_img = rs.getString(4);
				System.out.print(singers);
				vo = new SongVO(song_name,singers,album_img);
				arr.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			close();
		}
		return arr;
		
	}
public ArrayList<PlayListVO> PlayList(){
		ArrayList<PlayListVO> arr = new ArrayList<PlayListVO>();
		try {
			getConn();
			sql = "select * from playlist";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String playlist_name = rs.getString(2);
				String playlist_tag = rs.getString(3);
				

				vo1 = new PlayListVO(playlist_name,playlist_tag);
				arr.add(vo1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			close();
		}
		return arr;
		
		
	}

public PlayListVO OnePlist(String name){
	try {
		getConn();
		sql = "select * from playlist where playlist_name = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, name);
		rs = psmt.executeQuery();
		while(rs.next()) {
			String playlist_name = rs.getString(2);
			String playlist_tag = rs.getString(3);
			vo1 = new PlayListVO(playlist_name,playlist_tag);
		}
	} catch (Exception e) {
		e.printStackTrace();
		
	}finally {
		close();
	}
	return vo1;
	
	
}

	public ArrayList<PlayListVO> SUList(){
		ArrayList<PlayListVO> arr = new ArrayList<PlayListVO>();
		try {
			getConn();
			sql = "select * from playlist where song_tag like '%¿©¸§%'";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				int num = rs.getInt(1);
				String playlist_name = rs.getString(2);
				String playlist_tag = rs.getString(3);
				

				vo1 = new PlayListVO(playlist_name,playlist_tag);
				arr.add(vo1);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			close();
		}
		return arr;
	}
}
