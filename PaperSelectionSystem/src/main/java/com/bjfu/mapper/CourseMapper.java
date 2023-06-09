package com.bjfu.mapper;

import java.util.List;


import com.bjfu.po.Course;
import com.bjfu.pojo.CourseBasicInfo;


public interface CourseMapper {
	public List<CourseBasicInfo> selectCourses();//查询全部课程基本信息
	public CourseBasicInfo selectCourseBasicInfoById(String course_id);//查询某个课程的基本信息
	public Course selectCourseById(String course_id);
	public List<Course> selectAllCourse();//查询全部课程信息
	public void updateCourse(Course newCourse);
	public void insertCourse(Course course);//增加新课程记录
}
