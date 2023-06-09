package com.bjfu.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjfu.po.Paper;
import com.bjfu.po.Student;
import com.bjfu.po.TC;
import com.bjfu.po.Teacher;
import com.bjfu.po.Topic;
import com.bjfu.pojo.StuTopicInfo;
import com.bjfu.pojo.TcTeacher;
import com.bjfu.pojo.TopicInfo;
import com.bjfu.pojo.teacherCourse;
import com.bjfu.serviceImpl.*;

@Controller
public class TeacherController {
	@Autowired
	private TeacherServiceImpl teacherServiceImpl;
	@Autowired
	private TCServiceImpl tcServiceImpl;
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private StuTopicServiceImpl stuTopicServiceImpl;
	@Autowired
	private TopicPaperServiceImpl topicPaperServiceImpl;
	@Autowired
	private TopicServiceImpl topicServiceImpl;
	@Autowired
	private PaperServiceImpl paperServiceImpl;
	@RequestMapping("/teacherHome")
	public String teacherHomepage(Model model,HttpServletRequest req) {
		String current_user_id=null;
		String current_teacher_id=null;//��ǰ��¼��teacher_id
		Teacher teacher=new Teacher();
		List<teacherCourse> courseList=new ArrayList<teacherCourse>();
		List<String> main_teachersName=new ArrayList<String>();//������ʦ����list
		//��õ�ǰ��user_id
		current_user_id=req.getSession().getAttribute("user_id").toString();
		//���ݵ�ǰ��¼��user_id�õ���Ӧ��teacher
		teacher=teacherServiceImpl.getTeacherByUId(current_user_id);

		HttpSession session=req.getSession();
		session.setAttribute("current_login_teacher_name", teacher.getTeacher_name());
		
		current_teacher_id=teacher.getTeacher_id();
		session.setAttribute("current_teacher_id",current_teacher_id);
		
		//�õ�������ʦ���ڵ�courseList,������������ʦ��Ϣ
		courseList=tcServiceImpl.getTeacherCsByTId(current_teacher_id);
		System.out.println("courseList");
		//����courseList�õ��γ̵�course_id��tc����ȥ�������ſγ̵�������ʦ,!!һ�ſγ�ֻ��һ��������ʦ!!
		//Ȼ����ݵõ���teacher_id��teacher���еõ����teacher_name
		for(int i=0;i<courseList.size();i++) {
			teacherCourse tCourse=new teacherCourse();
			tCourse=courseList.get(i);
			String course_id=tCourse.getCourse_id();
			System.out.println(course_id);
			Teacher mt=new Teacher();
			mt=tcServiceImpl.getMainTeacherByCourseId(course_id);
			System.out.println("main_t");
			main_teachersName.add(mt.getTeacher_name());
		}			

		model.addAttribute("courseList",courseList);
		model.addAttribute("main_teachersName",main_teachersName);
		return "teacherHome";
	}
	@RequestMapping("/teacherToCourseMenu")
	public String changeToCourseMenu(Model model,HttpServletRequest req) {
		String chioce_course_id=req.getParameter("course_id");//��Ҫ���������ĳ�γ�id
		HttpSession session=req.getSession();
		session.setAttribute("chioce_course_id",chioce_course_id);
		return "teacherToCourseMenu";
		
	}
	@RequestMapping("/ѧ������")
	public String teacher_studentManagement(Model model,HttpServletRequest req) {
		List<Student> studentList=new ArrayList<Student>();
		String course_id=req.getSession().getAttribute("chioce_course_id").toString();
		System.out.println("course_id��"+course_id);
		studentList=studentServiceImpl.getStudentsByCourseId(course_id);//!!���ˣ�Ӧ�������ſγ��µ�����ѧ����Ϣ,sc��student������ѯ
		model.addAttribute("studentList", studentList);
		//������������ʦ��������ת��ѧ�������༭ҳ
		String teacher_id=req.getSession().getAttribute("current_teacher_id").toString();
		System.out.println("teacher_id��"+teacher_id);
		//�жϵ�ǰ���ſγ̣������ʦ�ǲ���������ʦ,����course_id��teacher_id��ѯ
		/*TC tc=new TC();
		tc=tcServiceImpl.getTcByUidTid(course_id, teacher_id);   ���ֿ�ָ��Ĵ�����ʱ������ˣ�������
		String identify=tc.getIdentify();
		System.out.println("��ݣ�"+identify);
		if(identify.equals("����")) {
			return "mainTeacher_studentManagement";//��ת��ѧ�������޸�ҳ
		}*/
		
		return "teacher_studentManagement";
	}
	@RequestMapping("/ѧ��ѡ��")
	public String showStuTopicInfo(Model model,HttpServletRequest req) {
		List<StuTopicInfo> stuTopicInfoList=new ArrayList<StuTopicInfo>();
		String student_id=req.getParameter("student_id");
		stuTopicInfoList=stuTopicServiceImpl.getStuTopicInfo(student_id);
		model.addAttribute("stuTopicInfoList", stuTopicInfoList);
		return "teacher_stuTopic";
	}
	@RequestMapping("/�鿴ѧ�������б�")
	public String skimtopicPaper(Model model,HttpServletRequest req) {
		String stutopic_id=null;
		List<Paper> topicPaperInfoList=new ArrayList<Paper>();
		stutopic_id=req.getParameter("stutopic_id");//����stutopic��topicpaper��paper����֮��ı��в����������ļ�¼
		topicPaperInfoList=topicPaperServiceImpl.getTopicPaper(stutopic_id);
		model.addAttribute("topicPaperInfoList", topicPaperInfoList);
		return "skimTopicPaper";
	}
	@RequestMapping("/�������")
	public String topicManagement(Model model,HttpServletRequest req) {
		//�õ����ſγ��йص���������
		String course_id=req.getSession().getAttribute("chioce_course_id").toString();//ѡ��Ŀγ�
		String teacher_id=req.getSession().getAttribute("current_teacher_id").toString();
		List<TopicInfo> topicinfoList=new ArrayList<TopicInfo>();
		topicinfoList=topicServiceImpl.getTopicInfo(course_id, teacher_id);
		model.addAttribute("topicinfoList", topicinfoList);
		return "teacher_topicManagement";
	}
	@RequestMapping("/��������")
	public String showTopicDetailedInfo(Model model,HttpServletRequest req) {
		List<Student> topicStudentList=new ArrayList<Student>();
		String topic_id=req.getParameter("topic_id");
		
		topicStudentList=studentServiceImpl.getStudentByTopicId(topic_id);
		HttpSession session=req.getSession();
		session.setAttribute("current_topic_id",topic_id);
		session.setAttribute("topicStudentList", topicStudentList);
		return "teacher_showTopicDetailedInfo";
	}
	@RequestMapping("/��������")
	public String addTopic(Model model,HttpServletRequest request) {
		String topic_id=null;
		String course_id=null;
		String teacher_id=null;
		String topic_name=null;
		String keyword=null;
		String creation_time=null;
		String student_num_str=null;
		int student_num=-1;
		topic_id=request.getParameter("add_topic_id");
		course_id=request.getParameter("add_course_id");
		teacher_id=request.getParameter("add_teacher_id");
		topic_name=request.getParameter("add_topic");
		keyword=request.getParameter("add_keyword");
		Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        creation_time= simpleDateFormat.format(date);
		student_num_str=request.getParameter("add_student_num");
		if(topic_id!=null&&course_id!=null&&teacher_id!=null&&topic_name!=null&&
				keyword!=null&&creation_time!=null&&student_num_str!=null) {
			student_num=Integer.parseInt(student_num_str);
			Topic newTopic=new Topic();
			newTopic.setTopic_id(topic_id);
			newTopic.setCourse_id(course_id);
			newTopic.setTeacher_id(teacher_id);
			newTopic.setTopic(topic_name);
			newTopic.setKeyword(keyword);
			newTopic.setCreation_time(creation_time);
			newTopic.setStudent_num(student_num);
			if(topicServiceImpl.addTopic(newTopic)) {
				return "teacher_addTopicOk";
			}
		}
		return "teacher_addTopic";
	}
	@RequestMapping("/��ʦ�û���ʦ����")
	public String taecher_teacherManagement(Model model,HttpServletRequest request) {
		List<TcTeacher> tcList=new  ArrayList<TcTeacher>();
		String course_id=request.getSession().getAttribute("chioce_course_id").toString();//ѡ��Ŀγ�
		String teacher_id=request.getParameter("current_teacher_id");
		tcList=tcServiceImpl.getTCsBycourseID(course_id);
		model.addAttribute("tcList", tcList);
		//�жϵ�ǰ��¼����ʦ�ǲ������ſγ̵�������ʦ
		TC tc=new TC();
		tc=tcServiceImpl.getTcByUidTid(course_id, teacher_id);
		if(tc.getIdentify().equals("����")) {
			return "teacher_mainTteacherManagement";
		}
		return "taecher_teacherManagement";
	}
	//������ʦ�޸ġ�ɾ���ڿ���Ϣ
	//������ʦ�����ڿ���Ϣ
	
	
	
}

