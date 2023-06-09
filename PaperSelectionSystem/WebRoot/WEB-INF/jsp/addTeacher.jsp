<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <title>增加教师</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/headerAndTail.css">-->
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.edit{
	margin-top:60px;
	}
	table{
	width:600px;
	border:3px solid #948C8C;
	text-align:center;
	}
	tr{
	height:35px;
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
	<form action="增加教师" method="post">
	<br>
	<div class="tinfo">
	<p align="center">教师基本信息
		<table align = "center">
				<tr> 
					<td><p>教师ID:</td>
					<td><input type="text" name="add_teacher_id"></td>
					</tr>
				<tr>
					<td><p>教师名:</td>
					<td><input type="text" name="add_teacher_name"></td>
					</tr>
				<tr>
					<td><p>性别:</td>
					<td><input type="radio" value="男" name="add_teacher_sex">男
						<input type="radio" value="女" name="add_teacher_sex">女
					</td>
					
					</tr>
				<tr>
					<td><p>教师职称:</td>
					<td><input type="text" name="add_teacher_title"></td>
					</tr>
				<tr>
					<td><p>手机号:</td>
					<td><input type="text" value="请输入11位数字" name="add_teacher_phone"></td>
					</tr>
				<tr>
					<td><p>教师用户账号:</td>
					<td><input type="text" name="add_user_id"></td>
					</tr>	
				</table>
				</div>
				<br><br><br>
				<div class="tcinfo">
				<p align="center">教师授课信息
				<table align="center">
					<tr>
						<td><p>授课ID:</td>
						<td><input type="text" name="add_tc_id"></td>
					</tr>
					<tr>
						<td><p>授课课程:</td>
						<td>
							<select name="course_select">
							<option>------请选择------</option>
							<c:forEach items="${allCourseList}" var="course" varStatus="vs">  
							<option value="${course.course_id}">${course.course_id}${course.course_name}</option>
							</c:forEach>
							</select>
						</td>
						</tr>
					<tr>
						<td><p>身份:</td><!-- 考虑身份冲突，一门课程只能有一位主讲教师 -->
						<td><input type="radio" value="主讲教师" name="add_identify">主讲
						<input type="radio" value="团队教师" name="add_identify">团队</td>
					</tr>
					<tr>
						<td><p>讲授课时:</td><!-- 考虑课时冲突， 一门课下所有教师的讲授课时之和不能超过这门课程的总课时-->
						<td><input type="text" name="add_teach_hour"></td>
					</tr>
				</table>
				<br><br>
					<p align="center"><input type="submit" value="提交" style="
						width:50px;height: 30px;font-size: 15px">
					<input type="reset"  value="重置" style="
						width:50px;height: 30px;font-size: 15px">
					</div>
	</form>
	</div>
	

	</div>
	<div class="footer">
	<p>@all rights deserved.</p>
	</div>

  </body>
</html>
