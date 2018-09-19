package org.pro.domain;

public class UserVo {



	private String id;
	private String password;
	private String name;
	private String gender;
	private String email;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserVo() {

	}

	public UserVo(String id,String password) {
		this.id = id;
		this.password = password;

	}



	public UserVo(String id,String password, String email) {
		this.id = id;
		this.password = password;
		this.email = email;
	}

	public UserVo(String id, String password, String name, String gender, String email) {

		this.id = id;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.email = email;


	}

	@Override
	public String toString() {
		return "회원목록 [아이디 = " + this.id + ", 패스워드 = " + this.password + ", 이름 = " + this.name + ", 이메일 = " + this.email
				+ "]";
	}

}
