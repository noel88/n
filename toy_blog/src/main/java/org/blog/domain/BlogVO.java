package org.blog.domain;

public class BlogVO {


	private int no;
	private String title;
	private String name;
	private String now;
	private String context;
	private int cnt;
	private int comment_Cnt;

	
	public int getComment_Cnt() {
		return comment_Cnt;
	}
	public void setComment_Cnt(int comment_Cnt) {
		this.comment_Cnt = comment_Cnt;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNow() {
		return now;
	}
	public void setNow(String now) {
		this.now = now;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}





}
