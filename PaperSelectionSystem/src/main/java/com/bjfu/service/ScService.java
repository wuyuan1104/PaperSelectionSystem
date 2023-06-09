package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Course;

public interface ScService {
	public List<Course> getCoursesByStudentId(String student_id);
}
