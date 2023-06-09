<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta charset="utf-8">
    <title>编辑教师</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.main{
	margin-top:40px;
	}
	tr{
	height:45px;
	}	
	input{
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

	<div class="edit">
	<form action="编辑教师所授课程" method="post">
	<br>
				<p align="center">编辑教师授课信息
				<table align="center">
					<tr>
						<td><p>授课ID:</td>
						<td>${tc.tc_id}</td>
					</tr>
					<tr>
						<td><p>课程ID:</td>
						<td>
							<input type="text" value="${tc.course_id}" name="edit_course_id">
						</td>
						</tr>
					<tr>
						<td><p>身份:</td><!-- 考虑身份冲突，一门课程只能有一位主讲教师 -->
						<td><input type="radio" value="主讲教师" name="edit_identify">主讲
							<input type="radio" value="团队教师" name="edit_identify">团队</td>
					</tr>
					<tr>
						<td><p>讲授课时:</td><!-- 考虑课时冲突， 一门课下所有教师的讲授课时之和不能超过这门课程的总课时-->
						<td><input type="text" value="${tc.teach_hour}" name="edit_teach_hour"></td>
					</tr>
				</table>
				<br><br>
					<p align="center"><input type="submit"  value="提交" style="
						width:50px;height: 30px;font-size: 15px">
					<input type="reset"  value="重置" style="
						width:50px;height: 30px;font-size: 15px">
	</form>
	</div>
	

	</div>
	<div class="footer">
	<p>YuanyuanWu</p>
	</div>


  </body>
</html>
