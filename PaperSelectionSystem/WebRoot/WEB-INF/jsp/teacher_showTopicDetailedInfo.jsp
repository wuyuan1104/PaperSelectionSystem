<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.po.Paper" %>
<%@ page import="com.bjfu.po.Student" %>
<%@ page import="com.bjfu.serviceImpl.PaperServiceImpl" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">	<!-- 主题详情页 -->
<html>
  <head>
   <meta charset="utf-8">
   <!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
    <title>主题详情</title>
    <style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.nav{
			height: 80px;
			background: #638F6F;
		}
		.nav p{
			display: inline-block;
			height: 80px;
			line-height: 80px;
			float: right;
			font-size: 29px;
			color: #F0EFEF;
			margin-right: 50px;
		}
		.nav img{
			float: left;
			margin-top: 40px;
			margin-left: 20px;
		}
		.main{
			height: 650px;
		}
		.footer {
			height: 80px;
			background-color: #638F6F;
			text-align: center;
		}
		.footer p{
			display: inline-block;
			height: 80px;
			line-height: 80px;
			font-size: 18px;
			color: #F0EFEF;
		}
		a{
			text-decoration: none;
		}
		a:hover {
			text-decoration:underline;
		}
		
	</style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	
  </head>
  
  <body>
   <div class="nav">
	<div class="icon">
	<img src="images/icon.png" width="30px" height="30px">
	</div>
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">教师用户${current_login_teacher_name}</p>
	<p>研究生论文选读系统</p>	
	</div>
<div class="main">
		<div class="content">
			<div class="detailedInfo_div">
			<p align="center" style="font-size:20px;">选取该主题的学生信息
				<table align="center">
				   	<tr>
			             <td align = "center">学号</td>  
			             <td align = "center">姓名</td>  
			              <td align = "center">性别</td>  
			             <td align = "center">专业</td>  
			             <td align = "center">班级</td>
	        	 	</tr>
				<c:forEach items="${topicStudentList}" var="student" varStatus="vs">  
	       		 	<tr>      
		             <td align = "center">${student.student_id}</td>  
		             <td align = "center">${student.student_name}</td> 
		             <td align = "center">${student.sex}</td> 
		             <td align = "center">${student.major}</td> 
		             <td align = "center">${student.stu_class}</td> 
		             <!-- 显示该学生在该主题上传的论文列表 -->
		             
	        	 	</tr>
				</c:forEach> 
				</table>	
				<!-- <p align="center">该学生在该主题上传的论文 -->
				<%--<%
		             	List<Student> stuList=new ArrayList<Student>();
		             	List<Paper> paperList=new ArrayList<Paper>();
		             	PaperServiceImpl paperServiceImpl=new PaperServiceImpl();
		             	stuList=(List<Student>)request.getSession().getAttribute("topicStudentList");
		   				String student_id=null;//用于保存当前的Student的student_id
		   				String topic_id=request.getParameter("current_topic_id");
		   				out.println("<table>");
		   				for(int i=0;i<stuList.size();i++) {
							Student s=new Student();
							s=stuList.get(i);
							student_id=s.getStudent_id();
							System.out.println(student_id);
							paperList=paperServiceImpl.getStuPapersBySIdTopicId(student_id,topic_id);
							for(int t=0;t<paperList.size();t++){
							 	Paper paper=new Paper();
							 	paper=paperList.get(i);
								out.println("<tr><td>论文ID</td></tr>"+
								"<tr><td>论文题目</td></tr>"+
								"<tr><td>作者</td></tr>"+
								"<tr><td>出处</td></tr>"+
								"<tr><td>关键词</td></tr>"+
								"<tr><td>摘要</td></tr>"+
								"<tr><td>文件物理位置</td></tr>"+
								"<tr><td>上传时间</td></tr>"
								);
								
								out.println("<tr><td>"+paper.getPaper_id()+"</td><tr>"+
								"<tr><td>"+paper.getTitle()+"</td><tr>"+
								"<tr><td>"+paper.getAuthor()+"</td><tr>"+
								"<tr><td>"+paper.getPaper_source()+"</td><tr>"+
								"<tr><td>"+paper.getKeyword()+"</td><tr>"+
								"<tr><td>"+paper.getPaper_abstract()+"</td><tr>"+
								"<tr><td>"+paper.getDoc_location()+"</td><tr>"+
								"<tr><td>"+paper.getUploading_time()+"</td><tr>");
							}
							out.println("</table>");
						}
						
						
			//用这个student_id去查找该名学生在该主题上传的论文列表 stutopic,topicpar,paper表关联查询
			
		   				--%>
			</div>
			
			
		</div>
	</div>

	<div class="footer">
		<p>YuanyuanWu</p>
		</div>
  </body>
</html>
