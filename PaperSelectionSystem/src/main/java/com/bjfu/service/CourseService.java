package com.bjfu.service;

import java.util.List;

import com.bjfu.po.Course;
import com.bjfu.pojo.CourseBasicInfo;

public interface CourseService {
	public List<CourseBasicInfo> getCoursesBasicInfo();//查询全部课程的基本信息，打印课程ID、课程名、开设学期
	public CourseBasicInfo getCourseBasicInfoById(String course_id);
	public Course getCourseById(String course_id);
	public List<Course> getAllCourse();
	public Boolean updateCourse(Course newCourse);
	public Boolean addCourse(Course course);//增加新课程记录
	
}
