package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Course;
import com.bjfu.pojo.CourseBasicInfo;

public interface CourseService {
	public List<CourseBasicInfo> getCoursesBasicInfo();//��ѯȫ���γ̵Ļ�����Ϣ����ӡ�γ�ID���γ���������ѧ��
	public CourseBasicInfo getCourseBasicInfoById(String course_id);
	public Course getCourseById(String course_id);
	public List<Course> getAllCourse();
	public Boolean updateCourse(Course newCourse);
	public Boolean addCourse(Course course);//�����¿γ̼�¼
	
}
