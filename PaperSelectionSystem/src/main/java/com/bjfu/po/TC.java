package com.bjfu.po;
public class TC {
	private String tc_id;
	private String course_id;
	private String teacher_id;
	private String identify;//身份为主讲教师或团队教师
	private int teach_hour;//讲授学时
	
	public String getTc_id() {
		return tc_id;
	}
	public void setTc_id(String tc_id) {
		this.tc_id = tc_id;
	}
	public String getCourse_id() {
		return course_id;
	}
	public void setCourse_id(String course_id) {
		this.course_id = course_id;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
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
