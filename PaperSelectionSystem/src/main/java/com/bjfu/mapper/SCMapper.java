package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Course;

public interface SCMapper {
	public List<Course> selectCoursesByStudentId(String student_id);
}
