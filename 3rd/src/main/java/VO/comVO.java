package VO;

public class comVO {
	
	int post_no;
	String post_title;
	String contents;
	String user_id;
	String post_date;
	float star_review;
	int like_counts;
	int photo_no;
	
	
	public comVO(int post_no, String post_title, String contents, String user_id, String post_date, float star_review,
			int like_counts, int photo_no) {
		super();
		this.post_no = post_no;
		this.post_title = post_title;
		this.contents = contents;
		this.user_id = user_id;
		this.post_date = post_date;
		this.star_review = star_review;
		this.like_counts = like_counts;
		this.photo_no = photo_no;
	}
	
	
	
	public comVO(String post_title, String contents, String user_id, float star_review, int like_counts, int photo_no) {
		super();
		this.post_title = post_title;
		this.contents = contents;
		this.user_id = user_id;
		this.star_review = star_review;
		this.like_counts = like_counts;
		this.photo_no = photo_no;
	}



	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public float getStar_review() {
		return star_review;
	}
	public void setStar_review(float star_review) {
		this.star_review = star_review;
	}
	public int getLike_counts() {
		return like_counts;
	}
	public void setLike_counts(int like_counts) {
		this.like_counts = like_counts;
	}
	public int getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(int photo_no) {
		this.photo_no = photo_no;
	}
	
}
