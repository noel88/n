package org.blog.domain;



public class CommentVO {

	
	private int comment_no;
	private int post_no;
	private String comment_name;
	private String comment;
	private String comment_now;
	private int like_count;
	
	
	public int getComment_no() {
		return comment_no;
	}
	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}
	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}
	public String getComment_name() {
		return comment_name;
	}
	public void setComment_name(String comment_name) {
		this.comment_name = comment_name;
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
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	

	
	
}
