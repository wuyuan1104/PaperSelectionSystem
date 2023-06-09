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
		//---------------�о����û�-----------------
	@RequestMapping("/studentHome")
	public String studentHomepage(Model model,HttpServletRequest req) {
		String current_user_id=null;
		String current_student_id=null;//��ǰ��¼��student_id
		Student student=new Student();
		List<Course> courseList=new ArrayList<Course>();
		List<String> main_teachersName=new ArrayList<String>();//������ʦ����list
		//��õ�ǰ��user_id
		current_user_id=req.getSession().getAttribute("user_id").toString();
		//���ݵ�ǰ��¼��user_id�õ���Ӧ��student
		student=studentServiceImpl.getStudentByUserId(current_user_id);

		HttpSession session=req.getSession();
		session.setAttribute("current_login_student_name", student.getStudent_name());
		
		current_student_id=student.getStudent_id();
		session.setAttribute("current_student_id", current_student_id);
		//��sc�����student_id�õ�����ѧ����ѧ��courseList,������������ʦ��Ϣ
		courseList=scServiceImpl.getCoursesByStudentId(current_student_id);
		model.addAttribute("courseList", courseList);
		//����courseList�õ��γ̵�course_id��tc����ȥ�������ſγ̵�������ʦ,!!һ�ſγ�ֻ��һ��������ʦ!!
		//Ȼ����ݵõ���teacher_id��teacher���еõ����teacher_name
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
	@RequestMapping("/����鿴��ѡ��")
	public String sikmTopic(Model model,HttpServletRequest req) {
		String course_id=req.getParameter("course_id");//ѡ�еĿγ�ID
		//���ݿγ�ID��������в������ſγ��µ���������
		List<Topic> topicList=new ArrayList<Topic>();
		topicList=topicServiceImpl.getTopicsByCourseId(course_id);
		model.addAttribute("topicList",topicList);
		return "student_skimTopic";
	}
	@RequestMapping("/�鿴������ϸ��Ϣ")
	public String sikmTopicDetailedInfo(Model model,HttpServletRequest req) {
		//�õ���Ҫ�鿴��ϸ������Ϣ������ID
		String topic_id=req.getParameter("topic_id");
		List<Student> studentList=new ArrayList<Student>();
		//��������ID student��topic�������ѯ
		studentList=studentServiceImpl.getStudentByTopicId(topic_id);
		model.addAttribute("studentList", studentList);
		return "student_skimTopicDetailedInfo";
	}
	@RequestMapping("/�鿴�����б�")
	public String sikmStudentAllPaper(Model model,HttpServletRequest req) {
		//���ݵ����ѧ��ID ����stutopic��topicpaper��paper�� where student_id=?
		String student_id=req.getParameter("student_id");
		List<Paper> stuPaperList=new ArrayList<Paper>();
		stuPaperList=paperServiceImpl.getStuPapersByStudentId(student_id);
		model.addAttribute("stuPaperList", stuPaperList);
		return "student_skimStudentAllPaper";
	}
	@RequestMapping("/��Ҫ��")
	public String choicedTopic(Model model,HttpServletRequest req) {
		//�õ�����ѧ��������������Ϣ����student_id ����stutopic��topic��
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
