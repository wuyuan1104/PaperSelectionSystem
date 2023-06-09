package com.bjfu.controller;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjfu.po.Course;
import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.pojo.CourseBasicInfo;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.teacherCourse;
import com.bjfu.serviceImpl.*;

@Controller
public class AdminController {
	@Autowired
	private CourseServiceImpl courseServiceImpl;
	@Autowired
	private TCServiceImpl tcServiceImpl;
	@Autowired
	private TeacherServiceImpl teacherServiceImpl;
	
	@RequestMapping("/课程管理")
	public String courseManagement(Model model) {
		List<CourseBasicInfo> courseList=new ArrayList<CourseBasicInfo>();
		courseList=courseServiceImpl.getCoursesBasicInfo();
		model.addAttribute("courseList", courseList);
		return "courseManagement";
	}
	@RequestMapping("/课程详情")
	public String showCourseDetailedInfo(Model model,HttpServletRequest request) {
		List<TcTeacher> teacherList=new ArrayList<TcTeacher>();
		CourseBasicInfo courseBasicInfo=new CourseBasicInfo();
		
		String course_id=request.getParameter("course_id");
		System.out.println(course_id);
		courseBasicInfo=courseServiceImpl.getCourseBasicInfoById(course_id);
		teacherList=tcServiceImpl.getTCsBycourseID(course_id);//该课程的所有授课老师
		model.addAttribute("courseBasicInfo", courseBasicInfo);
		model.addAttribute("teacherList",teacherList);
		
		return "courseDetailedInfo";
	}
	@RequestMapping("/编辑课程")
	public String editCourse(Model model,HttpServletRequest request) {
		String course_id=request.getParameter("course_id");
		CourseBasicInfo editCourseBasicInfo=new CourseBasicInfo();
		editCourseBasicInfo=courseServiceImpl.getCourseBasicInfoById(course_id);
		model.addAttribute("editCourseBasicInfo", editCourseBasicInfo);
		//修改课程信息
		String new_course_name=null;
		String new_course_term=null;
		String shour=null;
		int new_course_hour=0;

		new_course_name=request.getParameter("new_course_name");
		new_course_term=request.getParameter("new_course_term");
		shour=request.getParameter("new_course_hour");
		if(new_course_name!=null&&new_course_term!=null&&shour!=null) {
			new_course_hour=Integer.parseInt(shour);
			Course newCourse=new Course();
			newCourse.setCourse_id(course_id);
			newCourse.setCourse_name(new_course_name);
			newCourse.setTerm(new_course_term);
			newCourse.setCourse_hour(new_course_hour);
			if(courseServiceImpl.updateCourse(newCourse)) {
				return "editCourseOk";
			}
		}
		return "editCourse";
	}

	
	@RequestMapping("/增加课程")
	public String addCourse(Model model,HttpServletRequest request) {
		String course_id=null;
		String course_name=null;
		String course_term=null;
		String hour_str=null;
		int course_hour=0;
		course_id=request.getParameter("add_course_id");
		course_name=request.getParameter("add_course_name");
		course_term=request.getParameter("add_course_term");
		hour_str=request.getParameter("add_course_hour");
		if(course_id!=null&&course_name!=null&&course_term!=null&&hour_str!=null) {
			course_hour=Integer.parseInt(hour_str);
			Course newCourse=new Course();
			newCourse.setCourse_id(course_id);
			newCourse.setCourse_name(course_name);
			newCourse.setTerm(course_term);
			newCourse.setCourse_hour(course_hour);
			if(courseServiceImpl.addCourse(newCourse)) {
				return "courseManagement";	
			}
		}
		return "addCourse";
	}
	
	//----------------------------------
	//----------教师管理
	@RequestMapping("/教师管理")
	public String teacherManagement(Model model) {
		List<Teacher> teacherList=new ArrayList<Teacher>();
		teacherList=teacherServiceImpl.getTeacherAll();
		model.addAttribute("teacherList", teacherList);
		return "teacherManagement";
	}
	@RequestMapping("/教师详情")
	public String showTeacherDeailedInfo(Model model,HttpServletRequest request) {
		String teacher_id=request.getParameter("teacher_id");//所点击的教师名称所对应的教师ID
		Teacher teacher=new Teacher();
		List<teacherCourse> teacherCourseList=new ArrayList<teacherCourse>();
		teacher=teacherServiceImpl.getTeacherById(teacher_id);//获得这名教师的教师信息
		teacherCourseList=tcServiceImpl.getTeacherCsByTId(teacher_id);//获得这名教师讲授的课程列表信息
		model.addAttribute("teacher",teacher);
		model.addAttribute("teacherCourseList",teacherCourseList);
		return "teacherDetailedInfo";
	}
	
	@RequestMapping("/编辑教师所授课程")
	public String editTc(Model model,HttpServletRequest request) {
		String tc_id=request.getParameter("tc_id");;//获取选中的要修改的授课记录
		String teacher_id=request.getParameter("teacher_id");//获取当前的教师id
		TC tc=new TC();
		tc=tcServiceImpl.getTcByTcId(tc_id);//获得当前选中要修改的授课记录
		model.addAttribute("tc", tc);
		//修改这名教师授课信息
		String edit_course_id=null;
		String edit_identify=null;
		String edit_teach_hour_str=null;
		int  edit_teach_hour=0;

		edit_course_id=request.getParameter("edit_course_id");
		edit_identify=request.getParameter("edit_identify");
		edit_teach_hour_str=request.getParameter("edit_teach_hour");
		if(edit_course_id!=null&&edit_identify!=null&&edit_teach_hour_str!=null) {
			System.out.println(edit_course_id+" "+edit_identify+" "+edit_teach_hour_str);
			edit_teach_hour=Integer.parseInt(edit_teach_hour_str);
			TC tcc=new TC();
			tcc.setTc_id(tc_id);
			tcc.setCourse_id(edit_course_id);
			tcc.setTeacher_id(teacher_id);
			tcc.setIdentify(edit_identify);
			tcc.setTeach_hour(edit_teach_hour);//考虑身份冲突和课时数冲突
			if(tcServiceImpl.editTc(tcc)) {
				return "editTeacherOk";
			}
			//else return "eaditTeacherError"
		}
		//else return "eaditTeacherError"
		return "editTeacher";
	}
	
	@RequestMapping("/增加教师")
	public String addTeacher(Model model,HttpServletRequest request) {
		String teacher_id=null;
		String user_id=null;
		String teacher_name=null;
		String teacher_sex=null;
		String teacher_title=null;
		String teacher_phone=null;
		String tc_id=null;
		String course_id=null;
		String teacher_identify=null;
		String teach_hour_str=null;
		int teach_hour=0;
		List<Course> allCourseList=new ArrayList<Course>();
		allCourseList=courseServiceImpl.getAllCourse();//把当前的全部课程信息渲染到页面
		model.addAttribute("allCourseList",allCourseList);
		teacher_id=request.getParameter("add_teacher_id");
		user_id=request.getParameter("add_user_id");
		teacher_name=request.getParameter("add_teacher_name");
		teacher_sex=request.getParameter("add_teacher_sex");
		teacher_title=request.getParameter("add_teacher_title");
		teacher_phone=request.getParameter("add_teacher_phone");
		tc_id=request.getParameter("add_tc_id");
		course_id=request.getParameter("course_select");
		teacher_identify=request.getParameter("add_identify");
		teach_hour_str=request.getParameter("add_teach_hour");
		if(teacher_id!=null&&teacher_name!=null&&teacher_sex!=null&&teacher_title!=null&&
			teacher_phone!=null&&tc_id!=null&&course_id!=null&&teacher_identify!=null&&teach_hour_str!=null) {
			teach_hour=Integer.parseInt(teach_hour_str);
			Teacher t=new Teacher();
			TC tc=new TC();
			//增加新教师记录   and 增加新授课记录，!!考虑授课学时，身份冲突!!
			t.setTeacher_id(teacher_id);
			t.setUser_id(user_id);
			t.setTeacher_name(teacher_name);
			t.setSex(teacher_sex);
			t.setTitle(teacher_title);
			t.setPhone(teacher_phone);
			tc.setTc_id(tc_id);
			tc.setCourse_id(course_id);
			tc.setTeacher_id(teacher_id);
			tc.setIdentify(teacher_identify);
			tc.setTeach_hour(teach_hour);
			
			if(teacherServiceImpl.addTeacher(t)&&tcServiceImpl.addTc(tc)) {
				return "teacherManagement";
			}
			//else return "addTeacherError";
		}
		
		return "addTeacher";
	}
}
