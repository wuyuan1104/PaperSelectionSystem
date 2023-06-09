<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- 查看主题对应的论文列表 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="utf-8">
	<!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
	<title>学生选题</title>
	<style type="text/css">
	*{
		margin: auto;
		pad ding: 0;
	}
	tr{
	height:30px;
	}
	.content{
	margin-top:30px;
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
	<p align="center" style="font-size:20px;">该学生所选主题的论文列表
	<!-- 展示该学生的选的主题的论文列表 -->
	<div class="showTopicPaperInfo">
	<table>
		<tr>      
             <td align = "center">论文ID</td>  
             <td align = "center">论文题目</td>  
             <td align = "center">作者</td>  
             <td align = "center">出处</td>
             <td align = "center">关键词</td>
             <td align = "center">摘要</td>
         </tr>
		<c:forEach items="${topicPaperInfoList}" var="topicPaperInfo" varStatus="vs">  
        <tr>      
             <td align = "center">${stuTopicInfo.topic_id}</td>  
             <td align = "center">${stuTopicInfo.topic}</td>  
             <td align = "center">${stuTopicInfo.keyword}</td>  
             <td align = "center">${stuTopicInfo.teacher_name}</td> 
             <td align="center"><a href="查看论文列表?stutopic_id=${stuTopicInfo.stutopic_id}">查看论文列表</a></td>
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
