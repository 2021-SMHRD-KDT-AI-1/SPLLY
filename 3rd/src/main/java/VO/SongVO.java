package VO;

public class SongVO {
	int song_no;
	String song_name;
	String singers;
	String album_img;	

	public SongVO(String song_name, String singers, String album_img) {
		
		this.song_name = song_name;
		this.singers = singers;
		this.album_img = album_img;

	}

	

	public String getSong_name() {
		return song_name;
	}

	public void setSong_name(String song_name) {
		this.song_name = song_name;
	}

	public String getSingers() {
		return singers;
	}

	public void setSingers(String singers) {
		this.singers = singers;
	}

	public String getAlbum_img() {
		return album_img;
	}

	public void setAlbum_img(String album_img) {
		this.album_img = album_img;
	}
	
}
