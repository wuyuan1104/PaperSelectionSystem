<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>
<%@ page import="com.bjfu.pojo.CourseBasicInfo" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  <!-- 教师用户的教师管理页面 -->

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
		pad ding: 0;
	}
	.content{
	margin-top:30px;
	}
	.add{
		float: right;
	 width:100px;
	 height:30px;
	 background:#1F6F4D;
	 margin-right:100px;
	 }
	.add p{
		color:#E4DCDC;	
	}
		tr{height: 30px;}
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
		<p align="center" style="font-size:20px;">该课程所有授课教师列表
	<div class="show_teacherinfo">
	<table>
		<tr>      
             <td align = "center">教师ID</td>  
             <td align = "center">姓名</td>  
             <td align = "center">身份</td>  
             <td align = "center">授课学时</td> 
         </tr>
		
            
        <c:forEach items="${tcList}" var="tc" varStatus="vs"> 
        <tr>   
             <td align = "center">${tc.teacher_id}</td>  
             <!-- 主讲教师才可以进入 ，在后台得到当前课程主讲教师的ID传过来与这个进行对比，相等，则<a>标签有效-->
             <td align = "center"><a href="主讲教师修改删除授课信息?teacher_id=${tc.teacher_id}">${tc.teacher_name}</a></td>  
             <td align = "center">${tc.identify}</td>  
             <td align = "center">${tc.teach_hour}</td> 
         </tr>  
		</c:forEach> 
	
	</table> 
	</div>
	</div>
		
	<div class="add"><a href="#">增加主题</a></div>
	</div>

	<div class="footer">
	<p>YuanyuanWu</p>
	</div>

</body>
</html>
