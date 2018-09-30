package org.pro.domain;

public class ReserveVo {

	private int code;
	private String name;
	private String checkInDate;
	private int days;
	private int peopleNum;
	private int r_price;



	public ReserveVo() {

	}


	public ReserveVo(int code, String name, String checkInDate, int days, int peopleNum,
			int r_price) {
		super();
		this.code = code;
		this.name = name;
		this.checkInDate = checkInDate;
		this.days = days;
		this.peopleNum = peopleNum;
		this.r_price = r_price;
	}



	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getCheckInDate() {
		return checkInDate;
	}


	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}


	public int getDays() {
		return days;
	}


	public void setDays(int days) {
		this.days = days;
	}


	public int getPeopleNum() {
		return peopleNum;
	}


	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}


	public int getR_price() {
		return r_price;
	}


	public void setR_price(int r_price) {
		this.r_price = r_price;
	}






	@Override
	public String toString() {
		return "ReserveVo [code=" + code + ", name=" + name + ", checkInDate=" + checkInDate +
				 ", days=" + days + ", peopleNum=" + peopleNum + ", r_price=" + r_price + "]";
	}





}
