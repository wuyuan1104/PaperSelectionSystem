package com.bjfu.po;

public class StuTopic {
	private String stutopic_id;
	private String student_id;
	private String topic_id;
	private String select_time;//选题时间
	private int flag;//是否已上交论文
	public String getStutopic_id() {
		return stutopic_id;
	}
	public void setStutopic_id(String stutopic_id) {
		this.stutopic_id = stutopic_id;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(String topic_id) {
		this.topic_id = topic_id;
	}
	public String getSelect_time() {
		return select_time;
	}
	public void setSelect_time(String select_time) {
		this.select_time = select_time;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	
}
