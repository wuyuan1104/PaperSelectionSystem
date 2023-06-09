<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <meta charset="utf-8">
	<!-- <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->

	<title>教师管理主页</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	
	 a{
		text-decoration: none;
		font-size: 25px;
		color:#BD585A;	
		text-algin:center;
	}
	a:hover{
		font-size: 30px;
		color:#BD585A;	
	}
	.menu{
	margin-top:200px;
	text-align:center;
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
	
		<!-- 
			List<CourseBasicInfo> courseList=new ArrayList<CourseBasicInfo>();
			CourseService courseService=new CourseServiceImpl();
			courseList=courseService.getCoursesBasicInfo();
			request.setAttribute("courseList", courseList);
		 -->
		 <div class="menu">
	    <a href="学生管理">学生管理</a>

	
		<a href="主题管理">选题管理</a>
	

		<a href="教师管理">教师管理</a>
		</div>
	</div>
<div class="footer">
	<p>YuanyuanWu</p>
	</div>
</body>
</html>
