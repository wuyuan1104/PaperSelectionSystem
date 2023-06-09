<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.po.Course" %>
<%@ page import="com.bjfu.po.TC" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <meta charset="utf-8">
 <!--   <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
    <title>课程详情</title>
    <style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.detailedInfo{
		margin-top:50px;
	}
	.tinfo{
		margin-top:50px;
	}
	
	table{
	width:600px;
	border:3px solid #948C8C;
	text-align:center;
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
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">管理员用户${user_id}</p>
	<p>研究生论文选读系统</p>	
	</div>
	<div class="main">
		<div class="content">
			<div class="detailedInfo">
				<table>
					<p align="center" style="font-size: 30px">课程基本信息</p>
					<tr> 
						<td><p>课程ID:</td>
						<td>${courseBasicInfo.course_id}</td>
						</tr>
					<tr>
						<td><p>课程名：</td>
						<td>${courseBasicInfo.course_name}</td>
						</tr>
					<tr>
						<td><p>开设学期：</td>
						<td>${courseBasicInfo.term}</td>
						</tr>
					<tr>
						<td><p>总课时数：</td>
						<td>${courseBasicInfo.course_hour}</td>
						</tr>
					<tr>
						<td><p>主讲教师：</td>
						<td>${courseBasicInfo.teacher_name}</td>
						</tr>
					<tr>
						<td><a href="编辑课程?course_id=${courseBasicInfo.course_id}">编辑</a></td>
					</tr>
					</table>
				<div class="tinfo">
				<table>
					<p align="center" style="font-size: 30px">教师信息
				   	<tr>
			             <td>教师ID</td>  
			             <td>姓名</td>  
			             <td>身份</td>  
			             <td>授课学时</td>
	        	 	</tr>
				<c:forEach items="${teacherList}" var="teacher" varStatus="vs">  
	       		 	<tr>      
		             <td>${teacher.teacher_id}</td>  
		             <td>${teacher.teacher_name}</td>   
		             <td>${teacher.identify}</td> 
		             <td>${teacher.teach_hour}</td> 
					</tr>   
				</c:forEach> 
				</table>	
				</div>
			</div>
			
			
		</div>
	</div>

	<div class="footer">
		<p>YuanyuanWu</p>
		</div>

  </body>
</html>
