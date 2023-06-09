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
	<title>研究生主页</title>
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
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">研究生用户${current_login_student_name}</p>
	<p>研究生论文选读系统</p>	
	</div>
<div class="main" align="center">
<br><br>
	<p style="font-size:25px">该生所学课程列表
	<table>
		<tr>      
             <td align = "center">课程ID</td>  
             <td align = "center">课程名</td>  
             <td align = "center">开设学期</td>  
             <td align = "center">总课时数</td> 
             <td align = "center">主讲教师</td> 
         </tr>
		
            
        <c:forEach items="${courseList}" var="course" varStatus="vs"> 
        <tr>   
             <td align = "center">${course.course_id}</td>  
             <td align = "center"><a href="主题查看和选题?course_id=${course.course_id}">${course.course_name}</a></td>  
             <td align = "center">${course.term}</td>  
             <td align = "center">${course.course_hour}</td> 
             <td align = "center">${main_teachersName[vs.index]}</td> 
         </tr>
		</c:forEach> 
	
	</table> 
	</div>
<div class="footer">
	<p>YuanyuanWu</p>
	</div>
</body>
</html>
