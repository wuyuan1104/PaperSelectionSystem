package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.SCMapper;
import com.bjfu.po.Course;
import com.bjfu.service.ScService;

@Service
public class ScServiceImpl implements ScService{
	@Autowired
	private SCMapper scDao;
	public List<Course> getCoursesByStudentId(String student_id){
		return scDao.selectCoursesByStudentId(student_id);
	}
}
