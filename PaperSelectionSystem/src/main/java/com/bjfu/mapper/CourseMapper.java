package com.bjfu.mapper;

import java.util.List;


import com.bjfu.po.Course;
import com.bjfu.pojo.CourseBasicInfo;


public interface CourseMapper {
	public List<CourseBasicInfo> selectCourses();//��ѯȫ���γ̻�����Ϣ
	public CourseBasicInfo selectCourseBasicInfoById(String course_id);//��ѯĳ���γ̵Ļ�����Ϣ
	public Course selectCourseById(String course_id);
	public List<Course> selectAllCourse();//��ѯȫ���γ���Ϣ
	public void updateCourse(Course newCourse);
	public void insertCourse(Course course);//�����¿γ̼�¼
}
