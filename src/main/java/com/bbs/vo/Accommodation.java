package com.bbs.vo;

public class Accommodation {

	private String accom_name;
	private String accom_add;
	private String accom_img;
	private String accom_text;
	
	public Accommodation() {}

	public Accommodation(String accom_name, String accom_add, String accom_img, String accom_text) {
		super();

		this.accom_name = accom_name;
		this.accom_add = accom_add;
		this.accom_img = accom_img;
		this.accom_text = accom_text;
	}


	public String getAccom_name() {
		return accom_name;
	}

	public void setAccom_name(String accom_name) {
		this.accom_name = accom_name;
	}

	public String getAccom_add() {
		return accom_add;
	}

	public void setAccom_add(String accom_add) {
		this.accom_add = accom_add;
	}

	public String getAccom_img() {
		return accom_img;
	}

	public void setAccom_img(String accom_img) {
		this.accom_img = accom_img;
	}

	public String getAccom_text() {
		return accom_text;
	}

	public void setAccom_text(String accom_text) {
		this.accom_text = accom_text;
	}

	@Override
	public String toString() {
		return "Accommodation [accom_name=" + accom_name + ", accom_add=" + accom_add
				+ ", accom_img=" + accom_img + ", accom_text=" + accom_text + "]";
	}

	

	
	
	
}
