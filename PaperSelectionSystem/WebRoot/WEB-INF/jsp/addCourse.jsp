<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <title>增加课程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	*{
		margin: auto;
		padding: 0;
	}
	.edit{
		width:500px;
		height: 400px;
		margin-top: :70px;
	}	
		.edit tr{
			height:60px;
			width:120px
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
	<form action="增加课程" method="post">
		<table align = "center">
					<tr> 
						<td><p>课程ID:</td>
						<td><input type="text" name="add_course_id"></td>
						</tr>
					<tr>
						<td><p>课程名:</td>
						<td><input type="text" name="add_course_name"></td>
						</tr>
					<tr>
						<td><p>开设学期:</td>
						<td><input type="text" name="add_course_term"></td>
						</tr>
					<tr>
						<td><p>讲授学时:</td>
						<td><input type="text" name="add_course_hour"></td>
						</tr>
					
					</table>
					<p align="center" style="height: 40px;width: 200px"><input type="submit"  value="提交" style="
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
