package com.bjfu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjfu.po.Course;
import com.bjfu.po.Paper;
import com.bjfu.po.Student;
import com.bjfu.po.Teacher;
import com.bjfu.po.Topic;
import com.bjfu.serviceImpl.PaperServiceImpl;
import com.bjfu.serviceImpl.ScServiceImpl;
import com.bjfu.serviceImpl.StudentServiceImpl;
import com.bjfu.serviceImpl.TCServiceImpl;
import com.bjfu.serviceImpl.TopicServiceImpl;

@Controller
public class StudentController {
	@Autowired
	private TCServiceImpl tcServiceImpl;
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private ScServiceImpl scServiceImpl;
	@Autowired
	private PaperServiceImpl paperServiceImpl;
	@Autowired
	private TopicServiceImpl topicServiceImpl;
	//-----------------------------------------
		//---------------研究生用户-----------------
	@RequestMapping("/studentHome")
	public String studentHomepage(Model model,HttpServletRequest req) {
		String current_user_id=null;
		String current_student_id=null;//当前登录的student_id
		Student student=new Student();
		List<Course> courseList=new ArrayList<Course>();
		List<String> main_teachersName=new ArrayList<String>();//主讲教师姓名list
		//获得当前的user_id
		current_user_id=req.getSession().getAttribute("user_id").toString();
		//根据当前登录的user_id得到对应的student
		student=studentServiceImpl.getStudentByUserId(current_user_id);

		HttpSession session=req.getSession();
		session.setAttribute("current_login_student_name", student.getStudent_name());
		
		current_student_id=student.getStudent_id();
		session.setAttribute("current_student_id", current_student_id);
		//在sc表根据student_id得到这名学生所学的courseList,不包括主讲教师信息
		courseList=scServiceImpl.getCoursesByStudentId(current_student_id);
		model.addAttribute("courseList", courseList);
		//遍历courseList得到课程的course_id在tc表中去查找这门课程的主讲教师,!!一门课程只有一个主讲教师!!
		//然后根据得到的teacher_id在teacher表中得到这个teacher_name
		for(int i=0;i<courseList.size();i++) {
			Course course=new Course();
			course=courseList.get(i);
			String course_id=course.getCourse_id();
			Teacher mt=new Teacher();
			mt=tcServiceImpl.getMainTeacherByCourseId(course_id);
			System.out.println("main_t");
			main_teachersName.add(mt.getTeacher_name());
		}
		model.addAttribute("main_teachersName", main_teachersName);
		return "studentHome";
	}
	@RequestMapping("/主题查看和选题")
	public String sikmTopic(Model model,HttpServletRequest req) {
		String course_id=req.getParameter("course_id");//选中的课程ID
		//根据课程ID在主题表中查找这门课程下的所有主题
		List<Topic> topicList=new ArrayList<Topic>();
		topicList=topicServiceImpl.getTopicsByCourseId(course_id);
		model.addAttribute("topicList",topicList);
		return "student_skimTopic";
	}
	@RequestMapping("/查看主题详细信息")
	public String sikmTopicDetailedInfo(Model model,HttpServletRequest req) {
		//得到想要查看详细主题信息的主题ID
		String topic_id=req.getParameter("topic_id");
		List<Student> studentList=new ArrayList<Student>();
		//根据主题ID student和topic表关联查询
		studentList=studentServiceImpl.getStudentByTopicId(topic_id);
		model.addAttribute("studentList", studentList);
		return "student_skimTopicDetailedInfo";
	}
	@RequestMapping("/查看论文列表")
	public String sikmStudentAllPaper(Model model,HttpServletRequest req) {
		//根据点击的学生ID 关联stutopic和topicpaper和paper表 where student_id=?
		String student_id=req.getParameter("student_id");
		List<Paper> stuPaperList=new ArrayList<Paper>();
		stuPaperList=paperServiceImpl.getStuPapersByStudentId(student_id);
		model.addAttribute("stuPaperList", stuPaperList);
		return "student_skimStudentAllPaper";
	}
	@RequestMapping("/我要读")
	public String choicedTopic(Model model,HttpServletRequest req) {
		//得到这名学生的所有主题信息，以student_id 关联stutopic和topic表
		String student_id=req.getParameter("current_student_id");
		List<Topic> topicList=new ArrayList<Topic>();
		List<Paper> paperList=new ArrayList<Paper>();
		topicList=topicServiceImpl.getTopicsByStudentID(student_id);
		paperList=paperServiceImpl.getStuPapersByStudentId(student_id);
		model.addAttribute("topicList", topicList);
		model.addAttribute("paperList", paperList);
		return "hasChoicedTopic";
	}
}
