package com.bjfu.pojo;
//��ʦ���ڿγ̵���Ϣʵ��
public class teacherCourse {
	private String tc_id;
	private String course_id;
	private String course_name;
	private String term;//����ѧ��
	private String identify;//��ʦ�����ſγ̵���ݣ�����/�Ŷ�
	private int teach_hour;//������ʦ���ڿεĿ�ʱ����һ�ſ���������ʦ�Ŀ�ʱ��֮�Ͳ��ܳ������ſγ̵��ܿ�ʱ��
	private int course_hour;//���ſγ̵��ܿ�ʱ��
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
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
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
	public int getCourse_hour() {
		return course_hour;
	}
	public void setCourse_hour(int course_hour) {
		this.course_hour = course_hour;
	}
	
	
}
