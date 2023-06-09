<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/navAndFooter.css">
  <script src="layui/layui.js"></script>
  <link rel="stylesheet" href="layui/css/layui.css" media="all">
	<title>课程管理</title>
	<style type="text/css">
	.main{
		height: 720px;
	}

	.nav_content{
		float: left;
	    width: 300px;
	    height: 200px;
    }
	.nav_content a{
		text-decoration: none;
		display: inline-block;
		width: 300px;
		height: 50px;
		font-size: 22px;
		line-height: 50px;
		background:#B8C2BB;
		color: #000000;
	}
    .nav_content a:hover{
		background:#6B726C;
		color:#E5E9E5;
	}
	.title{
		height: 35px; 
	    width: 900px;
		background-color:#F7F7F7;
	}
	.title a{
		display: inline-block;
		width: 120px;
		height: 35px; 
		line-height: 35px;
		text-decoration: none;
		color: #000000;
		float: left;
	}
	.title p{
		display: inline-block;
		width: 30px;
		height: 35px; 
		float: left;
		line-height: 35px;
	}
	.content{
		width: 900px;
		float: right;
	}
	.add{
		width:900px;
		height: 45px;
	}
	.add a{
		text-decoration: none;
		color: #FFFFFF;
		background: #C54C4C;
		width: 110px;
		height: 35px;
		line-height: 35px;
		display: inline-block;
		margin-top: 30px;
		margin-left: 50px;
		
	}
	.courseinfo{
		width: 680px;
		margin-top: 20px;
	}
	.one_info{
		border-left-style:solid;
		border-left-width: 40px;
		border-left-color: #6B726C;
		background-color: #F7F7F7;
	}
	.one_info p{
		display: inline-block;
		height: 40px;
		width: 320px;
		line-height: 40px;
	}
	.teacherinfo{
		margin-top: 20px;
		border-left-style:solid;
		border-left-width: 40px;
		border-left-color:#6B726C;
		background-color: #F7F7F7;
	}
	.teacherinfo p{
		display: inline-block;
		height: 40px;
		width: 320px;
		line-height: 40px;
	}
	.pageTo{
		height: 80px;
	}
	</style>
</head>

<body>

<div class="all">
    <div class="nav">
	<div id="nav_icon">
	<img src="images/logo.png" alt="nav_icon" width="270px;" height="200px;">
	</div>
	<div id="user_icon">
		<img src="images/user_icon.png" alt="user_icon"  width="35px;" height="35px;" >
		<p>管理员用户${user_id}</p>
	</div>	
	</div>
<div class="main">
	<div class="content">
	<div class="title">
		课程列表
	</div>
	<div class="show_coursesinfo">
	<table>
		<tr>      
             <td align = "center">课程号</td>  
             <td style="width:40px"></td>
             <td align = "center">课程名</td> 
             <td style="width:40px"></td> 
             <td align = "center">开设学期</td>  
             <td style="width:40px"></td>
             <td align = "center">总课时数</td> 
             <td style="width:40px"></td>
             <td align = "center">主讲教师</td> 
         </tr>
		
            
        <c:forEach items="${courseList}" var="courseBasicInfo" varStatus="vs"> 
        <tr>   
             <td align = "center">${courseBasicInfo.course_id}</td> 
             <td style="width:40px;height:30px"></td> 
             <td align = "center"><a href="课程详情?course_id=${courseBasicInfo.course_id}">${courseBasicInfo.course_name}</a></td>
             <td style="width:40px"></td>  
             <td align = "center">${courseBasicInfo.term}</td>  
             <td style="width:40px"></td>
             <td align = "center">${courseBasicInfo.course_hour}</td> 
             <td style="width:40px"></td>
             <td align = "center">${courseBasicInfo.teacher_name}</td> 
         </tr>
             <!--  <td align = "center"><html:department pdeptid="${user.PDeptid}"></html:department></td> <!-- 自定义标签 --> -->     
		</c:forEach> 
	
	</table> 
	</div>
	</div>
		
	<div class="add"><a href="增加课程">增加课程</a></div>
	</div>

	<div class="footer">
	<p>@all rights deserved.</p>
	</div>
</div>

</body>
</html>
