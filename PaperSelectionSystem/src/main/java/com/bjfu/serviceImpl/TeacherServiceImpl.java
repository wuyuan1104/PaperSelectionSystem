package com.bjfu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjfu.mapper.TeacherMapper;
import com.bjfu.po.Teacher;
import com.bjfu.service.TeacherService;
@Service
public class TeacherServiceImpl implements TeacherService{
	@Autowired
	private TeacherMapper teacherDao;
	@Override
	public String getTeacherNameById(String teacher_id) {
		return teacherDao.selectTNameById(teacher_id);
	}
	@Override
	public List<Teacher> getTeacherAll(){
		return teacherDao.selectTeacherAll();
	}
	@Override
	public Teacher getTeacherById(String teacher_id) {
		return teacherDao.selectTeacherById(teacher_id);
	}
	@Override
	public Teacher getTeacherByUId(String user_id) {
		return teacherDao.selectTeacherByUId(user_id);
	}
	@Override
	public Boolean addTeacher(Teacher t) {
		teacherDao.insertTeacher(t);
		return true;
	}
}
