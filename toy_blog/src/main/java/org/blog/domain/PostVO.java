package org.blog.domain;


/**
 * @author n
 *
 */


public class PostVO {


	private int post_no;
	private int blog_no;
	private String title;
	private String name;
	private String now;
	private String context;
	private String keyword;
	private int cnt;
	private int comment_Cnt;
	private int like_count;
	private int like_cnt;
	private int category_no;
	private String public_yn;




	public int getBlog_no() {
		return blog_no;
	}
	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}
	public int getCategory_no() {
		return category_no;
	}
	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}
	public String getPublic_yn() {
		return public_yn;
	}
	public void setPublic_yn(String public_yn) {
		this.public_yn = public_yn;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getPost_no() {
		return post_no;
	}
	public void setPost_no(int post_no) {
		this.post_no = post_no;
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
	public int getComment_Cnt() {
		return comment_Cnt;
	}
	public void setComment_Cnt(int comment_Cnt) {
		this.comment_Cnt = comment_Cnt;
	}



	@Override
	public String toString() {
		return "BlogVO [keyword=" + keyword + "]";
	}






}
