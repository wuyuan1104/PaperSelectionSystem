package com.bjfu.pojo;

public class TcTeacher {
	private String teacher_id;
	private String teacher_name;
	private String identify;//���Ϊ������ʦ���Ŷӽ�ʦ
	private int teach_hour;//����ѧʱ
	
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
