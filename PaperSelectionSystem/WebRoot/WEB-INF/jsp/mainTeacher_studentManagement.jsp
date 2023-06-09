<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="utf-8">
	<!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
	<title>主讲教师管理学生主页</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	tr{
	height:30px;
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
	<br><br>
		<p align="center" style="font-size:20px;">该课程所有学生信息
	<!-- 分页形式展示该课程所有学生信息 -->
	<div class="showStusInfo">
	<table>
		<tr>      
             <td align = "center">学号</td>  
             <td align = "center">姓名</td>  
             <td align = "center">性别</td>  
             <td align = "center">专业</td>
             <td align = "center">班级</td>
         </tr>
		<c:forEach items="${studentList}" var="student" varStatus="vs">  
        <tr>      
             <td align = "center">${student.student_id}</td>  
             <td align = "center"><a href="学生选题?student_id=${student.student_id}">${student.student_name}</a></td>  
             <td align = "center">${student.sex}</td>  
             <td align = "center">${student.major}</td> 
             <td align = "center">${student.stu_class}</td>
             <td><a href="编辑?student_id=${student.student_id}">编辑</a></td>
             <td><a href="删除">删除</a></td>
         </tr>
         
	</c:forEach> 
		<tr>
			<td align = "center"><a href="新增学生名单">新增名单</a></td> 
			</tr>
	</table> 
	</div>
	</div>
		
	<div class="footer">
	<p>YuanyuanWu</p>
	</div>
</body>
</html>
