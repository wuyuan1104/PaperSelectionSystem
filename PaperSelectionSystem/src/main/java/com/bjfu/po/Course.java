package com.bjfu.po;

public class Course {
	private String course_id;
	private String course_name;
	private String term;
	private int course_hour;
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
	public int getCourse_hour() {
		return course_hour;
	}
	public void setCourse_hour(int course_hour) {
		this.course_hour = course_hour;
	}
	
}
