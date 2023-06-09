<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <meta charset="utf-8">
    <title>注册页面</title>
    
  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/user.css">  </head>

  </head>
  
  <body>
  <form action="register" method="post">
	<div align="center">
		<div class="login_header" >
				Sign up
			</div>
			<div class="login_main">
			<p>你是
				<input type="radio" name="user_type" value="1">教师
				<input type="radio" name="user_type" value="2">学生
				<div class="login_text">
					<table >
						<tr>
							<td class="text_left">
								账号：
							</td>
							<td >
								<input type="text" name="user_id" class="inputText">
							</td>
						</tr>
					</table>
				
				</div>
				<div class="login_text">
						<table>
							<tr>
								<td class="text_left">
									密码：
								</td>
								<td >
									<input type="password" name="password" class="inputText">
								</td>
							</tr>
						</table>
				</div>
				<input type="submit" value="提交" style="height:40px;width:70px;background-color:#02a8a8;color:white;margin-right:35px;">
				<input type="reset" value="重置" style="height:40px;width:70px;background-color:#02a8a8;color:white;margin-right:35px;">
			</div>
		</div>
	</form>
  </body>
</html>
