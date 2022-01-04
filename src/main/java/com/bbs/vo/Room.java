package com.bbs.vo;

public class Room {
	private int room_id;
	private int room_num;
	private String room_name;
	private String room_img;
	private int room_price;
	private String accom_name;
	
	public Room() {}

	public Room(int room_id, int room_num, String room_name, String room_img, int room_price, String accom_name) {
		super();
		this.room_id = room_id;
		this.room_num = room_num;
		this.room_name = room_name;
		this.room_img = room_img;
		this.room_price = room_price;
		this.accom_name = accom_name;
	}

	public int getRoom_id() {
		return room_id;
	}

	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}

	public int getRoom_num() {
		return room_num;
	}

	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_img() {
		return room_img;
	}

	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
	}

	public String getAccom_name() {
		return accom_name;
	}

	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}

	@Override
	public String toString() {
		return "Room [room_id=" + room_id + ", room_num=" + room_num + ", room_name=" + room_name + ", room_img="
				+ room_img + ", room_price=" + room_price + ", accom_name=" + accom_name + "]";
	}

	

	
}
