package com.bjfu.serviceImpl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bjfu.mapper.CourseMapper;
import com.bjfu.po.Course;
import com.bjfu.pojo.CourseBasicInfo;
import com.bjfu.service.CourseService;

@Service
public class CourseServiceImpl implements CourseService{
	@Autowired
	private CourseMapper courseDao;
	@Override
	public List<CourseBasicInfo> getCoursesBasicInfo(){
		return courseDao.selectCourses();
	}
	@Override
	public CourseBasicInfo getCourseBasicInfoById(String course_id) {
		return courseDao.selectCourseBasicInfoById(course_id);
	}
	@Override
	public Course getCourseById(String course_id) {
		return courseDao.selectCourseById(course_id);
	}
	@Override
	public List<Course> getAllCourse(){
		return courseDao.selectAllCourse();
	}
	@Override
	public Boolean updateCourse(Course newCourse) {
		courseDao.updateCourse(newCourse);
		return true;
	}
	@Override
	public Boolean addCourse(Course course) {
		courseDao.insertCourse(course);
		return true;
	}
	
}
