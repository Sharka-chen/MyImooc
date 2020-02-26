<%-- 
    Document   : regest
    Created on : 2020-1-7, 8:49:39
    Author     : 25224
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>慕课网登录注册界面</title>
		<link rel="stylesheet" type="text/css" href="css/outer.css"/>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/regest/regest.js"></script>
	</head>
	<body>
		<!-- 外框 outer-->
		<div id="outer">
			<!-- 1.头部的tab标签切换分别实现登录和注册功能 -->
			<div class="header">
				<span class="sign-log">登录</span>
				<span class="sign-regest">注册</span>
			</div>
			<span id="cross"></span>
			<!-- 2.中间的登录：邮箱和密码；注册：邮箱和验证码 -->
			<div class="central-area">
				<!--2.1 登录tab -->
				<form  id="loging-form">
					<div id="log" >
					<input type="email" name="useremail" id="useremail" placeholder="请输入登录的邮箱" required="required"/>
					<input type="password" name="userpassword" id="userpassword" placeholder="请输入密码" required="required"/>
					<div class="other">
						<label  style="margin-right: 30px;"><input type="checkbox" checked="checked"/>七天内自动登录</label>
						<a href="#">找回密码</a>
						<label >|</label>
						<a href="#">忘记密码</a>	
					</div>
					<!-- 登录按钮	 -->
					<button type="button" id="loging-btn">登录</button>
					<p id="mistake"></p>
				</div>
				</form>
				
				<!-- 2.2注册tab -->
				<form id="regesting-form">
					<div id="regest" >
					<input type="email" name="useremail" id="regestemail" placeholder="请输入注册的邮箱" required="required"/>
					<input type="password" name="userpassword" id="regestpassword" placeholder="请设置密码" required="required"/>
					<div class="another">
						<label><input type="checkbox" checked="checked"/>同意<a href="#">《慕课网注册协议》</a>
					 &amp; 
					<a href="#">《隐私政策》</a></label>
					</div>
					<!-- 注册按钮 -->
					<button type="button" id="regesting-btn">注册</button>
					<p id="tip"></p>
				</div>
				</form>
				
			</div>
		</div>
	</body>
</html>

