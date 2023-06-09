package com.bjfu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.teacherCourse;

public interface TCMapper {
	public List<TcTeacher> selectTCsBycourseId(String course_id);//���һ�ſγ̵������ڿ���ʦ
	public List<teacherCourse> selectTeacherCsByTId(String teacher_id);//���һ����ʦ���ڵ����пγ���Ϣ
	public TC selectTcByTcId(String tc_id);
	public Teacher selectMainTeacherByCourseId(String course_id);//��ѯ�õ�һ�ſγ̵�������ʦ����װ��Teacher
	public void insertTc(TC tc);//����һ����ʦ�ڿμ�¼
	public void updateTc(TC tc);
	public TC selectTcByUidTid(@Param("course_id")String course_id,@Param("teacher_id")String teacher_id);
}
