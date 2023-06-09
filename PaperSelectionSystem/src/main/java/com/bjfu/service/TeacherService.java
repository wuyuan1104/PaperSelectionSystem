package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Teacher;

public interface TeacherService {
	public String getTeacherNameById(String teacher_id);
	public List<Teacher> getTeacherAll();
	public Teacher getTeacherById(String teacher_id);
	public Teacher getTeacherByUId(String user_id);
	public Boolean addTeacher(Teacher t);
}
