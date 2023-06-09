<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- 展示选中的课程的所有论文主题信息 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="utf-8">
  <!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
  <script src="layui/layui.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css" media="all">
	<title>选题管理</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.content{
	margin-top:30px;
	}
	.tr{
	height:30px;
	}
	.add{
	float: right;
	 width:100px;
	 height:30px;
	 background:#1F6F4D;
	 margin-right:40px;
	 }
	.add p{
		color:#E4DCDC;	
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
	<div class="content">
	
		<p align="center">主题列表
	<div class="show_topicinfo">
	<table>
		<tr>      
             <td align = "center">主题ID</td>  
             <td align = "center">主题名</td>  
             <td align = "center">出题教师名称</td>  
             <td align = "center">创建时间</td> 
             <td align = "center">选题人数</td> 
         </tr>
		
            
        <c:forEach items="${topicinfoList}" var="topicinfo" varStatus="vs"> 
        <tr>   
             <td align = "center">${topicinfo.topic_id}</td>  
             <td align = "center"><a href="主题详情?topic_id=${topicinfo.topic_id}">${topicinfo.topic}</a></td>  
             <td align = "center">${topicinfo.teacher_name}</td>  
             <td align = "center">${topicinfo.creation_time}</td> 
             <td align = "center">${topicinfo.student_num}</td> 
         </tr>
		</c:forEach> 
	
	</table> 
	</div>
	</div>
		
	<div class="add"><a href="增加主题">增加主题</a></div>
	</div>

	<div class="footer">
	<p>YuanyuanWu</p>
	</div>

</body>
</html>
