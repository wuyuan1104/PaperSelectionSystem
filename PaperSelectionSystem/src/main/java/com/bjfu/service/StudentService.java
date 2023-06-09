package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Student;

public interface StudentService {
	public List<Student> getStudentAll();
	public List<Student> getStudentsByCourseId(String course_id);//��sc������õ�һ�ſγ̵�����ѧ����Ϣ
	public List<Student> getStudentByTopicId(String topic_id);//��ѯѡ����ĳ�����������ѧ����Ϣ
	public Student getStudentByUserId(String user_id);
}
