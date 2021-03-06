package org.blog.domain;

public class UserVO {

	
	
	private String user_email;
	private String user_pwd;
	private String user_name;
	private String user_authCode;
	private String user_auth_yn;
	
	
	
	public String getUser_authCode() {
		return user_authCode;
	}
	public void setUser_authCode(String user_authCode) {
		this.user_authCode = user_authCode;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_auth_yn() {
		return user_auth_yn;
	}
	public void setUser_auth_yn(String user_auth_yn) {
		this.user_auth_yn = user_auth_yn;
	}
	@Override
	public String toString() {
		return "UserVO [user_email=" + user_email + ", user_pwd=" + user_pwd + ", user_name=" + user_name
				+ ", user_auth_yn=" + user_auth_yn + "]";
	}
	
	
	
}
