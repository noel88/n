package org.pro.domain;

import java.sql.Array;
import java.util.Arrays;

public class BoardVo {

	private int code; // 기본키값 숙소코드
	private int numOfPeople; // 숙박가능인원
	private String local; // 숙소지역
	private String roomsType; // 숙소종류
	private String title; //숙소 제목
	private String text; //숙소 설명하기
	private String g_reserveStartnDate; // 숙소로 쓸수 있는 기간[시작]
	private String g_reserveEndnDate; // 숙소로 쓸수 있는 기간[끝]
	private int price; //숙소 금액
	private int count; //조회수


	public BoardVo() {

	}



	public BoardVo(int code, int numOfPeople, String local, String roomsType, String title, String text,
			String g_reserveStartnDate, String g_reserveEndnDate, int price,int count) {

		this.code = code;
		this.numOfPeople = numOfPeople;
		this.local = local;
		this.roomsType = roomsType;
		this.title = title;
		this.text = text;
		this.g_reserveStartnDate = g_reserveStartnDate;
		this.g_reserveEndnDate = g_reserveEndnDate;
		this.price = price;
		this.count = count;

	}

	public BoardVo(int numOfPeople, String local, String roomsType, String title, String text,
			String g_reserveStartnDate, String g_reserveEndnDate, int price) {


		this.numOfPeople = numOfPeople;
		this.local = local;
		this.roomsType = roomsType;
		this.title = title;
		this.text = text;
		this.g_reserveStartnDate = g_reserveStartnDate;
		this.g_reserveEndnDate = g_reserveEndnDate;
		this.price = price;


	}





	public int getCode() {
		return code;
	}



	public void setCode(int code) {
		this.code = code;
	}



	public int getNumOfPeople() {
		return numOfPeople;
	}



	public void setNumOfPeople(int numOfPeople) {
		this.numOfPeople = numOfPeople;
	}



	public String getLocal() {
		return local;
	}



	public void setLocal(String local) {
		this.local = local;
	}



	public String getRoomsType() {
		return roomsType;
	}



	public void setRoomsType(String roomsType) {
		this.roomsType = roomsType;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getText() {
		return text;
	}



	public void setText(String text) {
		this.text = text;
	}



	public String getG_reserveStartnDate() {
		return g_reserveStartnDate;
	}



	public void setG_reserveStartnDate(String g_reserveStartnDate) {
		this.g_reserveStartnDate = g_reserveStartnDate;
	}



	public String getG_reserveEndnDate() {
		return g_reserveEndnDate;
	}



	public void setG_reserveEndnDate(String g_reserveEndnDate) {
		this.g_reserveEndnDate = g_reserveEndnDate;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}





	@Override
	public String toString() {
		return "BoardVo [code=" + code + ", numOfPeople=" + numOfPeople + ", local=" + local + ", roomsType="
				+ roomsType + ", title=" + title + ", text=" + text + ", g_reserveStartnDate=" + g_reserveStartnDate
				+ ", g_reserveEndnDate=" + g_reserveEndnDate + ", price=" + price + "]";
	}








}





