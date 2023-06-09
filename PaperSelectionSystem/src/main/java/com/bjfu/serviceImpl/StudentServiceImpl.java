package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.StudentMapper;
import com.bjfu.po.Student;
import com.bjfu.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentMapper studentDao;

	public List<Student> getStudentAll(){
		return studentDao.selectStudentAll();
	}

	public List<Student> getStudentsByCourseId(String course_id){
		return studentDao.selectStudentsByCourseId(course_id);
	}
	
	public List<Student> getStudentByTopicId(String topic_id){
		return studentDao.selectStudentByTopicId(topic_id);
	}
	public Student getStudentByUserId(String user_id) {
		return studentDao.selectStudentByUserId(user_id);
	}
}
