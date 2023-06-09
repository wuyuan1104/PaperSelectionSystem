package com.bjfu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.teacherCourse;

public interface TCMapper {
	public List<TcTeacher> selectTCsBycourseId(String course_id);//获得一门课程的所有授课老师
	public List<teacherCourse> selectTeacherCsByTId(String teacher_id);//获得一个老师讲授的所有课程信息
	public TC selectTcByTcId(String tc_id);
	public Teacher selectMainTeacherByCourseId(String course_id);//查询得到一门课程的主讲教师，封装成Teacher
	public void insertTc(TC tc);//增加一条教师授课记录
	public void updateTc(TC tc);
	public TC selectTcByUidTid(@Param("course_id")String course_id,@Param("teacher_id")String teacher_id);
}
