package com;

public class memberVO {
	int user_no;
	String id;
	String name;
	String pw;
	String sns;
	
	
	
	public memberVO(int user_no, String id, String name, String pw, String sns) {
		super();
		this.user_no = user_no;
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.sns = sns;
	}
	
	
	public memberVO(String id, String name, String pw, String sns) {
		super();
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.sns = sns;
	}
	
	

	public memberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}


	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getSns() {
		return sns;
	}
	public void setSns(String sns) {
		this.sns = sns;
	}
	
	
}

