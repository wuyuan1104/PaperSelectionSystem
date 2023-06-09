package com.bjfu.service;

import java.util.List;


import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.teacherCourse;

public interface TcService {
	public List<TcTeacher> getTCsBycourseID(String course_id);
	public List<teacherCourse> getTeacherCsByTId(String teacher_id);
	public TC getTcByTcId(String tc_id);
	public Teacher getMainTeacherByCourseId(String course_id);
	public Boolean addTc(TC tc);
	public Boolean editTc(TC tc);
	public TC getTcByUidTid(String course_id,String teacher_id);
	
}
