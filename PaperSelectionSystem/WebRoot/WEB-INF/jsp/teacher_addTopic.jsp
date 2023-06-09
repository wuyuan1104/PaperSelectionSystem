<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><!-- 教师用户选题管理新增主题页 -->
<html>
  <head>
    <meta charset="utf-8">
    <title>增加主题</title>
    
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
	tr{
	height:30px;
	}
	.edit{
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
	<div class="edit">
	<form action="增加主题" method="post">
		<table>
					<tr> 
						<td><p>主题ID:</td>
						<td><input type="text" name="add_topic_id"></td>
						</tr>
					<tr>
						<td><p>课程ID:</td>
						<td><input type="text" name="add_course_id"></td>
						</tr>
					<tr>
						<td><p>出题教师ID:</td>
						<td><input type="text" name="add_teacher_id"></td>
						</tr>
					<tr>
						<td><p>主题名:</td>
						<td><input type="text" name="add_topic"></td>
						</tr>
					<tr>
						<td><p>关键词:</td>
						<td><input type="text" name="add_keyword"></td>
						</tr>
					<tr>
						<td><p>已选人数：</td><!-- 每个主题最多5名学生选 -->
						<td><input type="text" name="add_student_num"></td>
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
