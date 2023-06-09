package com.bjfu.pojo;
//教师用户 学生管理模块学生选题信息的显示
public class StuTopicInfo {
	private String stutopic_id;
	private String topic_id;
	private String topic;//主题名
	private String keyword;
	private String teacher_name;//指导教师名字
	
	
	public String getStutopic_id() {
		return stutopic_id;
	}
	public void setStutopic_id(String stutopic_id) {
		this.stutopic_id = stutopic_id;
	}
	public String getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(String topic_id) {
		this.topic_id = topic_id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	
}
