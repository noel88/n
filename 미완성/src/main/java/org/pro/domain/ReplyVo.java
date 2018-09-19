package org.pro.domain;

public class ReplyVo {

	private int code;
	private String id;//작성자 id
	private String replyText;//내용
	private int re_lkie;//좋아요 
	private int re_hate;//싫어요
	
	
	public ReplyVo() {
		// TODO Auto-generated constructor stub
	}


	public ReplyVo(String id, String replyText, int re_lkie, int re_hate) {
		super();
		this.id = id;
		this.replyText = replyText;
		this.re_lkie = re_lkie;
		this.re_hate = re_hate;
	}


	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getReplyText() {
		return replyText;
	}


	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}


	public int getRe_lkie() {
		return re_lkie;
	}


	public void setRe_lkie(int re_lkie) {
		this.re_lkie = re_lkie;
	}


	public int getRe_hate() {
		return re_hate;
	}


	public void setRe_hate(int re_hate) {
		this.re_hate = re_hate;
	}
	
	

	
	
	
	
}
