<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">

	<head>
		<%  
		String path = request.getContextPath();  
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
		request.setAttribute("path", basePath);  
		%> 
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥支付-登录</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="${path }css/global.css">
		<link rel="stylesheet" type="text/css" href="${path }css/biz/login.css">
		<script type="text/javascript" src="${path }js/jquery.js"></script>
		<script type="text/javascript" src="${path }js/global.js"></script>
	</head>

	<body class="login-body">
		
		</div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="${path }uc.jsp">
						<img src="${path }images/logo.png" alt="蓝桥" />
					</a>
				</div>
			</div>
		</div>
	    <div class="login-wrapper"> 
			<div class="login-pos layout">
				<div class="login-box login-wth-code">
					<div class="login-bd login-opa60"> 
					<form action="UserController/queryUserByName" method="post">
						<h3 class="login-title">登录</h3> 
						<dl class="login-item">
							<dt>
							   <span class="iconfont icon-acc-user"></span> 
							</dt>
							<dd>
								<input type="text" name="userName" placeholder="请输入用户名" required="required"/>
							</dd>
						</dl>
						<dl class="login-item">
							<dt>
								<span class="iconfont icon-acc-pwd"></span>
							</dt>
							<dd>
								<input type="password" name="password" placeholder="请输入密码" />
							</dd>
						</dl>
						<p class="login-help">
							<a href="${path }reg_personal_email_a.jsp" class="register">立即注册</a>
							<a href="${path }forget_password_a.jsp" class="forget-pwd" target="_blank">忘记密码?</a>
						</p>
						
						<div class="login-code clearfix">
							<dl class="login-item ">
								<dt>
								<span class="iconfont icon-acc-kaptcha"></span>
							</dt>
								<dd>
									<input type="text" placeholder="验证码" />
								</dd>
							</dl>
							<dl class="login-captcha">
								<img src="${path }CommentController/checkCode" alt="" width="100" height="32" class="passcode" style="height:43px;cursor:pointer;" onclick="this.src=this.src+'?'">
							</dl>
							
						</div>
						
						<input type="submit" value="登 录" class="glb-btn login-btn">
						<div class="login-error">
							<span class="iconfont icon-wrong"></span>
							<p>请输入用户名</p>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom" id="bottom">
		</div>
	</body>

</html>