<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
  <!-- <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
  <script src="layui/layui.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css" media="all">
	<title>课程管理</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.add{
	float: right;
	 width:100px;
	 height:30px;
	 background:#1F6F4D;
	 margin-right:200px;
	 }
	.add p{
		color:#E4DCDC;	
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
	<p style="float: left;font-size: 19px;line-height: inherit;margin-top: 50px;color:#8F3739; height: 20px;">管理员用户${user_id}</p>
	<p>研究生论文选读系统</p>	
	</div>
<div class="main">
	<div class="content">
	
		<p align="center" style="font-size:25px;">教师列表

	<div class="show_teachersinfo">
	<table>
		<tr>      
             <td align = "center">教师ID</td>  
             <td align = "center">教师名</td>  
             <td align = "center">联系电话</td>  
         </tr>
		<c:forEach items="${teacherList}" var="teacher" varStatus="vs">  
        <tr>      
             <td align = "center">${teacher.teacher_id}</td>  
             <td align = "center"><a href="教师详情?teacher_id=${teacher.teacher_id}">${teacher.teacher_name}</a></td>  
             <td align = "center">${teacher.phone}</td>  
         </tr>
	</c:forEach> 
	</table> 
	</div>
	</div>
		
	<div class="add"><a href="增加教师">增加教师</a></div>
	</div>

	<div class="footer">
	<p>YuanyuanWu</p>
	</div>

</body>
</html>
