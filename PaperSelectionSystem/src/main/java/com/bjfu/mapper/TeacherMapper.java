package com.bjfu.mapper;

import java.util.List;

import com.bjfu.po.Teacher;

public interface TeacherMapper {
	public String selectTNameById(String teacher_id);
	public List<Teacher> selectTeacherAll();
	public Teacher selectTeacherById(String teacher_id);
	public Teacher selectTeacherByUId(String user_id);
	public void insertTeacher(Teacher t);
}
