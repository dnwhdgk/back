package com.bbs.vo;

public class Users {

	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_gender;
	private String user_email;
	private int	   user_tel;
	
	public Users() {}

	public Users(String user_id, String user_pw, String user_name, String user_gender, String user_email,
			int user_tel) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_email = user_email;
		this.user_tel = user_tel;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public int getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(int user_tel) {
		this.user_tel = user_tel;
	}
	
	
}

