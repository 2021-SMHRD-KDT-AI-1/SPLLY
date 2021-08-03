package VO;

public class uploadVO {

	private int photo_no;
	private String photo;
	private String photo_tag;
	private int user_no;
	
	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getPhoto_no() {
		return photo_no;
	}

	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPhoto_tag() {
		return photo_tag;
	}

	public void setPhoto_tag(String photo_tag) {
		this.photo_tag = photo_tag;
	}

	public uploadVO(int photo_no, String photo, String photo_tag, int user_no) {
		super();
		this.photo_no = photo_no;
		this.photo = photo;
		this.photo_tag = photo_tag;
		this.user_no = user_no;
	}


	
	
	
	
	
	
}
