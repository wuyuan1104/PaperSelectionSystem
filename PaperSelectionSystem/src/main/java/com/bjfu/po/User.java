package com.bjfu.po;

public class User {
	private String user_id;
	private String password;
	private int role; //�û�����,0Ϊϵͳ����Ա��1Ϊ��ʦ��2Ϊѧ��
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
}
