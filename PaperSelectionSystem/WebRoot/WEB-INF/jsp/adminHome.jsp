<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="utf-8">
	<title>管理员主页</title>
	<style type="text/css">
		
	*{
		margin: auto;
		padding: 0;
	}
		
	.function_c{		
		margin-top: 70px;
		margin-left: 250px;	
		float: left;
	}
	.function_c a{
		display: inline-block;
		width: 290px;
		height: 260px;
		background-color:#D3B0B0;
		line-height: 260px;
		text-decoration: none;
		text-align:center;
		font-size: 25px;
	    color:#BD585A;
	}
	.function_c a:hover{
		font-size: 30px;
	    color:#BD585A;
		background-color:#D3B0B0;
	}
	.function_t{		
		margin-top: 70px;
		margin-right: 300px;	
		float: right;
	}
	.function_t a{
		line-height: 260px;
		text-decoration: none;
		display: inline-block;
		width: 290px;
		height: 260px;
		font-size: 25px;
		color:#BD585A;
		background-color:#D3B0B0;
		text-align:center;
	}
	.function_t a:hover{
		font-size: 30px;
	    color:#BD585A;
		background-color:#D3B0B0;
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
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">管理员用户${user_id}</p>
	<p>研究生论文选读系统</p>	
	</div>
	<div class="main">
	<div class="function_c">
		<!-- 
			List<CourseBasicInfo> courseList=new ArrayList<CourseBasicInfo>();
			CourseService courseService=new CourseServiceImpl();
			courseList=courseService.getCoursesBasicInfo();
			request.setAttribute("courseList", courseList);
		 -->
	    <a href="课程管理">课程管理</a>
	</div>
	<div class="function_t">
		<a href="教师管理">教师管理</a>
	</div>	
	</div>
	<div class="footer">
	<p>YuanyuanWu</p>
	</div>

<!--  -->

</body>
</html>
