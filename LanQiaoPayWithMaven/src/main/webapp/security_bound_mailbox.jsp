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
		<title>蓝桥支付-安全中心</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="${path }css/global.css">
		<link rel="stylesheet" type="text/css" href="${path }css/form.css">
		<link rel="stylesheet" type="text/css" href="${path }css/biz/security.css">
		<script type="text/javascript" src="${path }js/jquery.js"></script>
		<script type="text/javascript" src="${path }js/global.js"></script>
		<script type="text/javascript" src="${path }js/util.js"></script>
	</head>

	<body>
		<div id="top"></div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="${path }uc.jsp">
						<img src="${path }images/logo.png" alt="蓝桥" />
					</a>
				</div>
				<div id="nav" class="glb-nav">
					<ul class="clearfix">
						<li class="glb-nav-uc">
							<a href="${path }uc.jsp">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-setting current">
							<a href="${path }member_information.jsp">
								<span></span>
							</a>
						</li>
						<li class="glb-nav-trade">
							<a href="${path }trade_list.jsp">
								<span></span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main layout">
			<div class="col-menu">
				<ul class="menu-items">
					<li>
						<a class="menu-txt iconfont icon-menu-um" href="${path }member_information.jsp">会员资料</a>
					</li>
					<li class="current">
						<a class="menu-txt iconfont icon-menu-sm" href="${path }security.jsp">安全中心</a>
					</li>
					<li class="last">
						<a class="menu-txt iconfont icon-menu-bm" href="${path }my_card_list.jsp">银行卡管理</a>
					</li>
				</ul>
			</div>
			<div class="col-main">
				<div class="main-hd">
					<h3 class="iconfont icon-safe-email">邮箱绑定设置</h3>
				</div>
				<div class="main-bd">
					<div class="glb-step-top">
						<ul class="glb-step-nav safe-reset-nav">
							<li class="step-a">
								<span class="ico"></span>
								<p class="txt">验证身份</p>
							</li>
							<li class="direct">
								<p></p> <em></em>
							</li>
							<li class="step-b">
								<span class="ico"></span>
								<p class="txt">邮箱设置</p>
							</li>
							<li class="direct">
								<p></p> <em></em>
							</li>
							<li class="step-c last">
								<span class="ico"></span>
								<p class="txt">设置成功</p>
							</li>
						</ul>
					</div>
					<form class="form-bd" action="" id="demoForm">
						<div class="form-item">
							<h4 class="form-label">支付密码:</h4>
							<div class="form-entity">
								<div class="form-field">
									<input class="ipt" type="text" name="userName" value=""  placeholder="请输入您的支付密码"/>
								</div>
							</div>
						</div>
						<div class="form-item">
							<h4 class="form-label">邮箱:</h4>
							<div class="form-entity">
								<div class="form-field">
									<input class="ipt" type="text" name="userName" value=""  />
								</div>
							</div>
						</div>
						<div class="form-action clearfix">
							<a href="${path }member_reg_login.jsp" class="glb-btn submit-btn">
								<span>提 交</span>
							</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="bottom" class="bottom"></div>
	</body>

</html>