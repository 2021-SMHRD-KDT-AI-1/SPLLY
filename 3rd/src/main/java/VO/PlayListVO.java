package VO;

public class PlayListVO {
	int playlist_no;
	String playlist_name;
	String song_tag;
	int user_no;
	
	public PlayListVO(int playlist_no, String playlist_name, String song_tag, int user_no) {
		this.playlist_no = playlist_no;
		this.playlist_name = playlist_name;
		this.song_tag = song_tag;
		
	}
	
	public PlayListVO(String playlist_name, String song_tag) {
		super();
		this.playlist_name = playlist_name;
		this.song_tag = song_tag;
	}

	public int getPlaylist_no() {
		return playlist_no;
	}
	public void setPlaylist_no(int playlist_no) {
		this.playlist_no = playlist_no;
	}
	public String getPlaylist_name() {
		return playlist_name;
	}
	public void setPlaylist_name(String playlist_name) {
		this.playlist_name = playlist_name;
	}
	public String getSong_tag() {
		return song_tag;
	}
	public void setSong_tag(String song_tag) {
		this.song_tag = song_tag;
	} 
	
	
}
