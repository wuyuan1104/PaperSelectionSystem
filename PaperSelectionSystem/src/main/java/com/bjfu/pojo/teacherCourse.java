package com.bjfu.pojo;
//教师所授课程的信息实例
public class teacherCourse {
	private String tc_id;
	private String course_id;
	private String course_name;
	private String term;//开设学期
	private String identify;//教师在这门课程的身份，主讲/团队
	private int teach_hour;//这名老师的授课的课时数，一门课下所有老师的课时数之和不能超过这门课程的总课时数
	private int course_hour;//这门课程的总课时数
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
