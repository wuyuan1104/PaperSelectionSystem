package com.bjfu.pojo;

public class TcTeacher {
	private String teacher_id;
	private String teacher_name;
	private String identify;//身份为主讲教师或团队教师
	private int teach_hour;//讲授学时
	
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getIdentify() {
		return identify;
	}
	public void setIdentify(String identify) {
		this.identify = identify;
	}
	public int getTeach_hour() {
		return teach_hour;
	}
	public void setTeach_hour(int teach_hour) {
		this.teach_hour = teach_hour;
	}
	
}
