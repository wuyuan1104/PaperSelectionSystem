<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<!-- <%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ page import="com.bjfu.service.CourseService" %>
<%@ page import="com.bjfu.serviceImpl.CourseServiceImpl" %> -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><!-- 学生查看我的主题和论文列表 -->
<html>
  <head>
  <meta charset="utf-8">
  <!-- <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
	<title>学生个人主题页</title>
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
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
<div class="main" align="center"><br><br>
	<p style="font-size: 25px;">学生的所有主题
	<table>
		<tr>      
             <td align = "center">主题ID</td>  
             <td align = "center">出题教师ID</td>  
             <td align = "center">主题名</td>  
             <td align = "center">关键词</td> 
             <td align = "center">创建时间</td> 
             <td align = "center">已选人数</td> 
         </tr>
		
            
        <c:forEach items="${topicList}" var="topic" varStatus="vs"> 
        <tr>   
             <td align = "center">${topic.topic_id}</td>  
             <td align = "center">${topic.teacher_id}</td>  
             <td align = "center">${topic.topic}</td>  
             <td align = "center">${topic.keyword}</td>  
             <td align = "center">${topic.creation_time}</td>  
             <td align = "center">${topic.student_num}</td>  
         </tr>
		</c:forEach> 
	
	</table> 
	<br><br>
	<p style="font-size: 25px;">学生的所有论文
	<table>
		<tr>      
             <td align = "center">论文ID</td>  
             <td align = "center">论文题目</td>  
             <td align = "center">作者</td>  
             <td align = "center">出处</td>
             <td align = "center">关键词</td>
             <td align = "center">摘要</td>
             <td align = "center">文件位置</td>
             <td align = "center">上传时间</td>
         </tr>
		
            
       	<c:forEach items="${paperList}" var="paper" varStatus="vs">  
        <tr>      
             <td align = "center">${paper.paper_id}</td>  
             <td align = "center">${paper.title}</td>  
             <td align = "center">${paper.author}</td>  
             <td align = "center">${paper.paper_source}</td> 
             <td align = "center">${paper.keyword}</td> 
             <td align = "center">${paper.paper_abstract}</td> 
             <td align = "center">${paper.doc_location}</td> 
             <td align = "center">${paper.uploading_time}</td> 
         </tr>
	</c:forEach> 

	
	</table> 
	</div>
<div class="footer">
	<p>YuanyuanWu</p>
	</div>
</body>
</html>
