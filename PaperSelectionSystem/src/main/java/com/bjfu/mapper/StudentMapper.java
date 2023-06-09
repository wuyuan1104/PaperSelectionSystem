package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Student;

public interface StudentMapper {
	public List<Student> selectStudentAll();
	public List<Student> selectStudentsByCourseId(String course_id);
	public List<Student> selectStudentByTopicId(String topic_id);
	public Student selectStudentByUserId(String user_id);
}
