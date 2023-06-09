<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html;charset=utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    	<meta charset="utf-8">
    <title>登录页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" type="text/css" href="file:///C:/Users/admin/Workspaces/MyEclipse/PaperSelectionSystem/WebRoot/css/user.css">  </head>
  
  <body>
	<div class="header">
		<div class="headerLogo">
			
			<div class="headerTitle"><p>课程论文选读系统</p></div>
		</div>
		<div class="headerNav">
			<p>LOGIN 用户登录</p>
		</div>
	</div>
	<div class="main">
		<div class="main-inner" id="mainCnt">
		<div class="bgDiv"><img src="images/bg.jpg" style="width: inherit;height: inherit;"></div>
		<div class="loginTable">
		  <form action="login" method="post">
			<div align="center">
				<div class="login_header" >
						Sign in
					</div>
					<div class="login_main">
					<p>你是
						<input type="radio" name="user_type" value="0">管理员
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
						<input type="submit" value="登录" style="height:40px;width:70px;background-color:#02a8a8;color:white;margin-right:35px;">
						<input type="reset" value="重置" style="height:40px;width:70px;background-color:#02a8a8;color:white;margin-right:35px;">
						<br><br><a href="用户注册"><font color="#02a8a8" size="5">注册</font></a>
					</div>
				</div>
			</form>
			</div>
		</div>
		</div>
  </body>
</html>
