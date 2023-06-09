package com.bjfu.controller;

import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bjfu.po.User;
import com.bjfu.serviceImpl.UserServiceImpl;

@Controller
public class GetLogin {
	@Autowired
	private UserServiceImpl userServiceImpl;
	@RequestMapping("/login")
	public String login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String user_id=null;
		String password=null;
		String type_str=null;
		User u=null;
		int type=-1;
		u=new User();
		user_id=request.getParameter("user_id");
		password=request.getParameter("password");
		type_str=request.getParameter("user_type");
		
		
		//�û��˺ź���������Ϊ��
		//��������û�������������֮һ�ж��Ƿ�Ϊ��,�п�����ת��loginError.jsp
		if(type_str==null)
		{
			request.setAttribute("errorInfo", "��¼ʧ�ܣ������µ�¼��");
			return "loginError";//��ת����¼ʧ�ܽ���
		}else if(isParameterBlank(user_id)) {
			request.setAttribute("errorInfo", "��¼ʧ�ܣ������µ�¼��");
			return "loginError";//��ת����¼ʧ�ܽ���
	 	}else if(isParameterBlank(password)) {
 			request.setAttribute("errorInfo", "��¼ʧ�ܣ������µ�¼��");
			return "loginError";//��ת����¼ʧ�ܽ���
	 	}
		if((!isParameterBlank(user_id))&&(!isParameterBlank(password))&&(!isParameterBlank(type_str))){
			type=Integer.parseInt(type_str);
			u.setUser_id(user_id);
			u.setPassword(password);
			u.setRole(type);
			User user=userServiceImpl.getUser(u);
			HttpSession session=request.getSession();
			session.setAttribute("user_id", user_id);
			if(user!=null) {
				switch(type) {
				case 0:return "adminHome";
				case 1:return "redirect:teacherHome";
				case 2:return "redirect:studentHome";
				default:break;
				}
			}
			else {
				request.setAttribute("errorInfo", "��¼ʧ�ܣ������µ�¼��");
				return "loginError";
			}
		}
		
		return "login";
	}
	
	@RequestMapping("/���µ�¼")
	public String loginError() {
		return "login";
	}
	@RequestMapping("/�û�ע��")
	public String register() {
		return "register";
	}
	@RequestMapping("/register")
	public void userRegister(HttpServletRequest request,HttpServletResponse response) throws Exception{
		String user_id=null;
		String password=null;
		String type_str=null;
		int type=-1;
		User u=new User();
		user_id=request.getParameter("user_id");
		password=request.getParameter("password");
		type_str=request.getParameter("user_type");
		
		String forwardUrl=null;
		
		//�û��˺ź���������Ϊ��
		//��������û�������������֮һ�ж��Ƿ�Ϊ��,�п�����ת��registerError.jsp
		if(type_str==null)
		{
			request.setAttribute("errorInfo", "ע��ʧ�ܣ�������ע�ᣡ");
			forwardUrl="WEB-INF\\jsp\\registerError.jsp";//��ת��ע��ʧ�ܽ���
		}else if(isParameterBlank(user_id)) {
			request.setAttribute("errorInfo", "ע��ʧ�ܣ�������ע�ᣡ");
			forwardUrl="WEB-INF\\jsp\\registerError.jsp";//��ת��ע��ʧ�ܽ���
	 	}else if(isParameterBlank(password)) {
 			request.setAttribute("errorInfo", "ע��ʧ�ܣ�������ע�ᣡ");
 			forwardUrl="WEB-INF\\jsp\\registerError.jsp";//��ת��ע��ʧ�ܽ���
	 	}
		if((!isParameterBlank(user_id))&&(!isParameterBlank(password))&&(!isParameterBlank(type_str))){
			type=Integer.parseInt(type_str);
			u.setUser_id(user_id);
			u.setPassword(password);
			u.setRole(type);
			if(userServiceImpl.addUser(u)) {
				request.setAttribute("registerOkInfo", "ע��ɹ���������ע�ᣡ");
				forwardUrl="WEB-INF\\jsp\\login.jsp";
			}
			else {
				request.setAttribute("errorInfo", "ע��ʧ�ܣ�������ע�ᣡ");
				forwardUrl="WEB-INF\\jsp\\registerError.jsp";
			}
		}
		else {
			request.setAttribute("errorInfo", "ע��ʧ�ܣ�������ע�ᣡ");
			forwardUrl="WEB-INF\\jsp\\registerError.jsp";
		}
		RequestDispatcher disp=request.getRequestDispatcher(forwardUrl);
		disp.forward(request, response);
	}
	
	@RequestMapping("/����ע��")
	public String registerError() {
		return "register";
	}
	public static boolean isParameterBlank(String s) {
		if(s.trim()=="") {
			return true;
		}
		else
			return false;
	}
}
