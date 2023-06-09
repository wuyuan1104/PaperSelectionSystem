package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Student;

public interface StudentService {
	public List<Student> getStudentAll();
	public List<Student> getStudentsByCourseId(String course_id);//与sc表关联得到一门课程的所有学生信息
	public List<Student> getStudentByTopicId(String topic_id);//查询选择了某个主题的所有学生信息
	public Student getStudentByUserId(String user_id);
}
