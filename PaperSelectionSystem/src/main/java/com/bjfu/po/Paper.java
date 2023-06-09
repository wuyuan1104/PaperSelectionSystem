package com.bjfu.po;

public class Paper {
	private String paper_id;
	private String student_id;
	private String title;//论文题目
	private String author;
	private String paper_source;
	private String keyword;
	private String paper_abstract;//论文摘要
	private String doc_location;//文件位置
	private String uploading_time;//上传时间
	
	public String getPaper_id() {
		return paper_id;
	}
	public void setPaper_id(String paper_id) {
		this.paper_id = paper_id;
	}
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getPaper_source() {
		return paper_source;
	}
	public void setPaper_source(String paper_source) {
		this.paper_source = paper_source;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getPaper_abstract() {
		return paper_abstract;
	}
	public void setPaper_abstract(String paper_abstract) {
		this.paper_abstract = paper_abstract;
	}
	public String getDoc_location() {
		return doc_location;
	}
	public void setDoc_location(String doc_location) {
		this.doc_location = doc_location;
	}
	public String getUploading_time() {
		return uploading_time;
	}
	public void setUploading_time(String uploading_time) {
		this.uploading_time = uploading_time;
	}
	
	
}
