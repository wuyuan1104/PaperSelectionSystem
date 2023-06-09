package com.bjfu.serviceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.bjfu.mapper.TCMapper;
import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.teacherCourse;
import com.bjfu.service.TcService;

@Service
public class TCServiceImpl implements TcService{
	@Autowired
	private TCMapper tcDao;
	@Override
	public List<TcTeacher> getTCsBycourseID(String course_id){
		return tcDao.selectTCsBycourseId(course_id);
	}
	@Override
	public List<teacherCourse> getTeacherCsByTId(String teacher_id){
		return tcDao.selectTeacherCsByTId(teacher_id);
	}
	@Override
	public Boolean addTc(TC tc) {
		tcDao.insertTc(tc);
		return true;
	}
	@Override
	public TC getTcByTcId(String tc_id) {
		return tcDao.selectTcByTcId(tc_id);
	}
	@Override
	public Teacher getMainTeacherByCourseId(String course_id) {
		return tcDao.selectMainTeacherByCourseId(course_id);
	}
	@Override
	public Boolean editTc(TC tc) {
		tcDao.updateTc(tc);
		return true;
	}
	@Override
	public TC getTcByUidTid(String course_id,String teacher_id) {
		return tcDao.selectTcByUidTid(course_id, teacher_id);
	}
}
