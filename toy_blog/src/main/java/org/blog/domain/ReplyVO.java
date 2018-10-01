package org.blog.domain;



public class ReplyVO {

	
	private int reply_no;
	private int blog_no;
	private String reply_name;
	private String comment;
	private String comment_now;
	private int like_count;
	

	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	public int getBlog_no() {
		return blog_no;
	}
	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}
	public String getReply_name() {
		return reply_name;
	}
	public void setReply_name(String reply_name) {
		this.reply_name = reply_name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getComment_now() {
		return comment_now;
	}
	public void setComment_now(String comment_now) {
		this.comment_now = comment_now;
	}
	
	
	
}
