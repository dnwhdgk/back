package com.bbs.vo;

public class Reservation {

	private int resev_id;
	private String resev_status;
	private String resev_st;
	private String resev_end;
	private String user_id;
	private String accom_name;
	private int room_id;
	
	public Reservation() {}

	public Reservation(int resev_id, String resev_status, String resev_st, String resev_end, String user_id,
			String accom_name, int room_id) {
		super();
		this.resev_id = resev_id;
		this.resev_status = resev_status;
		this.resev_st = resev_st;
		this.resev_end = resev_end;
		this.user_id = user_id;
		this.accom_name = accom_name;
		this.room_id = room_id;
	}

	public int getResev_id() {
		return resev_id;
	}

	public void setResev_id(int resev_id) {
		this.resev_id = resev_id;
	}

	public String getResev_status() {
		return resev_status;
	}

	public void setResev_status(String resev_status) {
		this.resev_status = resev_status;
	}

	public String getResev_st() {
		return resev_st;
	}

	public void setResev_st(String resev_st) {
		this.resev_st = resev_st;
	}

	public String getResev_end() {
		return resev_end;
	}

	public void setResev_end(String resev_end) {
		this.resev_end = resev_end;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAccom_name() {
		return accom_name;
	}

	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}

	public int getRoom_id() {
		return room_id;
	}

	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}

	
	
}
