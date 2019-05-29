<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta name="description" content="Sidebar Transitions: Transition effects for off-canvas views" />
		<meta name="keywords" content="transition, off-canvas, navigation, effect, 3d, css3, smooth" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/normalize.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/demo.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/icons.css" />
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/component.css" />
		<script src="js/modernizr.custom.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>未登录首页</title>
</head>
<body>
<div id="st-container" class="st-container">
			
		<nav class="st-menu st-effect-11" id="menu-11">
				<h2 class="icon icon-lab">医院管理</h2>
				<ul>
					<li><a class="icon icon-data" href="login.jsp">亲，登陆一下吧！</a></li>
					<li><a class="icon icon-data" href="login.jsp">您还未登陆一下链接点击无效</a></li>
					<li><a class="icon icon-data" href="login.jsp">根据关键信息查询</a></li>
					<li><a class="icon icon-location" href="login.jsp">添加人员信息</a></li>
					<li><a class="icon icon-study" href="login.jsp">修改人员信息</a></li>
					<li><a class="icon icon-photo" href="login.jsp">查询所有信息</a></li>
					<li><a class="icon icon-wallet" href="muyahai.jsp">MuYaHai</a></li>
				</ul>
			</nav>


			<!-- content push wrapper -->
			<div class="st-pusher">
				<div class="st-content"><!-- this is the wrapper for the content -->
					<div class="st-content-inner"><!-- extra div for emulating position:fixed of the menu -->
						<!-- Top Navigation -->
						<div class="codrops-top clearfix">
							<a class="codrops-icon codrops-icon-prev" href="login.jsp"><span>登录/注册</span></a>
							<span class="right"><a class="codrops-icon codrops-icon-drop" href=""><span>Made by MuYaHai</span></a></span>
						</div>
						<header class="codrops-header">
							<h1>医院管理系统 <span>Hospital information management system</span></h1>
						</header>
						<div class="main clearfix">
							<div id="st-trigger-effects" class="column">
								<button data-effect="st-effect-11">菜单栏</button>
							</div>
							<div class="column">
								<p>您还没有登录，请进入登陆或注册页面</p>
							</div>
						</div><!-- /main -->
					</div><!-- /st-content-inner -->
				</div><!-- /st-content -->
			</div><!-- /st-pusher -->
		</div><!-- /st-container -->
		<script src="js/classie.js"></script>
		<script src="js/sidebarEffects.js"></script>

</body>
</html>