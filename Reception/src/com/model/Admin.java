package com.model;

public class Admin {
	private int userid;
	private String username;
	public Admin(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	private String password;
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Admin(int userid, String username, String password) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
