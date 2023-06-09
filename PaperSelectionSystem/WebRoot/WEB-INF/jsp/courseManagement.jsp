<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.mapper.CourseMapper" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta charset="utf-8">
  <!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
  <script src="layui/layui.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css" media="all">
	<title>课程管理</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	tr{
	height:20px;
	}
	.add{
	height:35px;
	width:90px;
	margin-top:20px;
	float:right;
	text-align:center;
	background:#1F6F4D;
	margin-right:250px;
	
	}
	.add p{
	color:white;
	text-size:20px;
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
			height: 750px;
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
	<div class="content">
	<br><br>
	<p align="center" style="font-size:25px;">课程列表
	<div class="coursesinfo">
	<table>
		<tr>      
             <td>课程ID</td>  
             <td>课程名</td>  
             <td>开设学期</td>  
             <td>总课时数</td> 
             <td>主讲教师</td> 
         </tr>
		

        <c:forEach items="${courseList}" var="courseBasicInfo" varStatus="vs"> 
        <tr>   
             <td>${courseBasicInfo.course_id}</td>           
             <td><a href="课程详情?course_id=${courseBasicInfo.course_id}">${courseBasicInfo.course_name}</a></td>
             <td>${courseBasicInfo.term}</td>  
             <td>${courseBasicInfo.course_hour}</td> 
             <td>${courseBasicInfo.teacher_name}</td> 
         </tr>
		</c:forEach> 
	
	</table> 
	</div>
	</div>
		
	<div class="add"><a href="增加课程">增加课程</a></div>
	</div>

	<div class="footer">
	<p>YuanyuanWu</p>
	</div>


</body>
</html>
