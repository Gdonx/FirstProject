 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询细节</title>
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
<link href="${pageContext.request.contextPath}/CSS/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/CSS/myh.css" rel="stylesheet">
</head>
<body>
<div id="st-container" class="st-container">
			
		<nav class="st-menu st-effect-11" id="menu-11">
				<h2 class="icon icon-lab">医院管理</h2>
				<ul>
					<li><a class="icon icon-data" href="finddetail.jsp">根据关键信息查询</a></li>
					<li><a class="icon icon-location" href="index.jsp">添加人员信息</a></li>
					<li><a class="icon icon-study" href="update2.jsp">修改人员信息</a></li>
					<li><a class="icon icon-photo" href="FindServlet">查询所有信息</a></li>
					<li><a class="icon icon-wallet" href="muyahai.jsp">MuYaHai</a></li>
				</ul>
			</nav>


			<!-- content push wrapper -->
			<div class="st-pusher">
				<div class="st-content"><!-- this is the wrapper for the content -->
					<div class="st-content-inner"><!-- extra div for emulating position:fixed of the menu -->
						<!-- Top Navigation -->
						<div id="st-trigger-effects" class="codrops-top clearfix">
							<button data-effect="st-effect-11">菜单栏</button>
							<a class="codrops-icon codrops-icon-prev" href="login.jsp"><span>登录/注册</span></a>
							<span class="right"><a class="codrops-icon codrops-icon-drop" href=""><span>Made by MuYaHai</span></a></span>
						</div>
						<header class="codrops-header">
							<h1>关键信息查询 <span>Hospital information management system</span></h1>
						</header>
						<div class="main clearfix">
						<form class="form-signin" action="" onsubmit="check(this)" name="" method="post">
							<div id="st-trigger-effects" class="column">
							        <label for="inputID">用户ID</label>
               						<input type="text" id="inputID" name="id" class="form-control" placeholder="请输入id" ><br>
                					<input type="submit" class="btn btn-primary" id="btn-login" value="查询ID" formaction="FindServletDetail"><br><br><br>
								
							</div>
							<div class="column">
									<label for="inputname">名字</label>
								    <input type="text" id="inputDoctorname" name="doctorname" class="form-control" placeholder="请输入医生姓名" ><br>
                					<input type="submit" class="btn btn-primary" id="btn-login" value="查询名字" formaction="FuzzyQuery"><br>
							</div>
							</form>
						</div><!-- /main -->
					</div><!-- /st-content-inner -->
				</div><!-- /st-content -->
			</div><!-- /st-pusher -->
		</div><!-- /st-container -->
		<script src="js/classie.js"></script>
		<script src="js/sidebarEffects.js"></script>
    	<script src="js/jquery.min.js"></script>
</body>
</html>