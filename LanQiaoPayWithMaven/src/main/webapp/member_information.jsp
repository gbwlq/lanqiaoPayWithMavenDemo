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
	<title>蓝桥支付-会员资料</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="${path }css/global.css">
	<link rel="stylesheet" type="text/css" href="${path }css/form.css">
	<link rel="stylesheet" type="text/css" href="${path }css/biz/security.css">
	<script type="text/javascript" src="${path }js/jquery.js"></script>
	<script type="text/javascript" src="${path }js/global.js"></script>
	<script type="text/javascript" src="${path }js/util.js"></script>
	<script>
		$(function () {
			document.getElementById("apply").onclick=function () {
				document.getElementById("applyDiv").style.display="block";
			}
			document.getElementById("alreadyMer").onclick=function () {
				document.getElementById("applyDiv").style.display="none";
			}
		});
	</script>
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
			<li class="last current">
				<a class="menu-txt iconfont icon-menu-um" href="${path }member_information.jsp">会员资料</a>
			</li>
			<li>
				<a class="menu-txt iconfont icon-menu-sm" href="${path }security.jsp">安全中心</a>
			</li>
			<li>
				<a class="menu-txt iconfont icon-menu-bm" href="${path }my_card_list.jsp">银行卡管理</a>
			</li>
		</ul>
	</div>
	<div class="col-main">
		<div class="main-hd">
			<h3 class="iconfont icon-safe-service">会员资料</h3>
		</div>
		<div class="main-bd account-infor clearfix" >
			<div class="account-img">
				<img src="${path }images/df_portrait.jsp" alt=""/><br>
				<a href="#">修改头像</a>
			</div>
			<div class="account-table">
				<table>
					<tr>
						<th>企业名称:</th>
						<td colspan="2">张三特色美食</td>
					</tr>
					<tr>
						<th>账户名:</th>
						<td colspan="2">122886@lanqiao.org</td>
					</tr>
					<tr>
						<th>账户状态:</th>
						<td colspan="2"><a href="#">实名认证会员</a></td>
					</tr>
					<tr>
						<th>绑定手机号:</th>
						<td>139****7890</td>
						<td class="col"><a href="${path }security_bound_phone.jsp">修改</a></td>
					</tr>
					<tr>
						<th>绑定邮箱:</th>
						<td>675***@qq.com</td>
						<td class="col"><a href="${path }security_bound_mailbox.jsp">修改</a></td>
					</tr>
					<tr>
						<th>银行卡:</th>
						<td><span class="bind">已绑定1张银行卡</span></td>
						<td class="col"><a href="${path }my_card_list.jsp">查看</a></td>
					</tr>
					<tr>
						<th>注册时间:</th>
						<td colspan="2">2016-6-20</td>
					</tr>
					<tr>
						<th>是否是商户:</th>
						<td colspan="2" class="merchant">
							<input type="radio" name="radio1" id="alreadyMer" checked="checked"/><span>是</span>
							<input type="radio" name="radio1" id="apply"/><span>否</span>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div id="applyDiv" class="applyDiv">
			<a href="${path }reg_company_a.jsp" class="glb-btn submit-btn">
				<span>申请成为商户</span>
			</a>
		</div>
	</div>
</div>
<div id="bottom" class="bottom"></div>
</body>

</html>