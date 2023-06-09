<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- 某课程选题学生名单页面 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta charset="utf-8">
	 <!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
	<title>学生浏览主题详情页</title>
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
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">教师用户${current_login_student_name}</p>
	<p>研究生论文选读系统</p>	
	</div>
<div class="main" align="center">
<div class="content">
<br><br>
		<p style="font-size:25px">该主题的所有学生名单
	<!-- 展示该选题的所有学生 -->
	<div>
	<table>
		<tr>      
             <td align = "center">学生ID</td>  
             <td align = "center">姓名</td>  
             <td align = "center">性别</td>  
             <td align = "center">专业</td>
             <td align = "center">班级</td>
         </tr>
		<c:forEach items="${studentList}" var="student" varStatus="vs">  
        <tr>      
             <td align = "center">${student.student_id}</td>  
             <td align = "center">${student.student_name}</td>  
             <td align = "center">${student.sex}</td>  
             <td align = "center">${student.major}</td> 
              <td align = "center">${student.stu_class}</td> 
             <td align="center"><a href="查看论文列表?student_id=${student.student_id}">查看论文列表</a></td>
         </tr>
	</c:forEach> 
	</table> 
	</div>
	</div>
		
	</div>
	<div class="footer">
	<p>YuanyuanWu</p>
	</div>

</body>
</html>
