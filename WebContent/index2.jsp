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
			<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" /><!--CSS RESET-->
	<link href="https://fonts.googleapis.com/css?family=Niramit:400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Mali:400,700" rel="stylesheet">
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css'>
	<link rel="stylesheet" href="css/style.css">
		<script src="js/modernizr.custom.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>超酷CSS3鼠标悬停图片背景动画特效|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
	<link rel="stylesheet" href="http://jrain.oscitas.netdna-cdn.com/tutorial/css/fontawesome-all.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css" /><!--CSS RESET-->
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css"><!--演示页面样式，使用时可以不引用-->
	<style>
		.box{
		    font-family: 'Fira Sans', sans-serif;
		    text-align: center;
		    overflow: hidden;
		    position: relative;
		}
		.box:before,
		.box:after{
		    content: '';
		    background-color: rgba(255,255,255,0.7);
		    height: 25%;
		    width: 100%;
		    opacity: 0;
		    transform: translateX(-50%);
		    position: absolute;
		    left: 50%;
		    top: -100%;
		    transition: all 0.3s;
		}
		.box:after{ top: 100%; }
		.box:hover:before{
		    transform: translateX(-50%) translateY(0);
		    top: 0;
		}
		.box:hover:after{
		    transform: translateX(-50%) translateY(0);
		    top: auto;
		    bottom: 0;
		}
		.box:hover:before,
		.box:hover:after{
		    height: 50%;
		    opacity: 1;
		    animation: animate 0.5s linear;
		}
		.box img{
		    width: 100%;
		    height: auto;
		}
		.box .box-content{
		    width: 100%;
		    opacity: 0;
		    filter: blur(10px);
		    transform: translateX(-50%) translateY(-50%);
		    position: absolute;
		    top: 60%;
		    left: 50%;
		    z-index: 1;
		    transition: all 0.4s ease 0.1s;
		}
		.box:hover .box-content{
		    opacity: 1;
		    filter: blur(0);
		    top: 50%;
		}
		.box .title{
		    color: #4834d4;
		    font-size: 25px;
		    font-weight: 600;
		    text-transform: uppercase;
		    margin: 0;
		}
		.box .post{
		    color: #444;
		    font-size: 15px;
		    font-weight: 600;
		    text-transform: uppercase;
		}
		.box .icon{
		    padding: 0;
		    margin: 0;
		    list-style: none;
		    opacity: 0;
		    transform: translateX(-50%);
		    position: absolute;
		    left: 50%;
		    bottom: 10px;
		    z-index: 1;
		    transition: all 0.3s ease 0.3s;
		}
		.box:hover .icon{ opacity: 1; }
		.box .icon li{ display: inline-block; }
		.box .icon li a{
		    color: #fff;
		    background-color: #4834d4;
		    line-height: 25px;
		    height: 30px;
		    width: 30px;
		    border: 2px solid #fff;
		    border-radius: 50%;
		    box-shadow: 3px -3px 5px #555;
		    display: block;
		    transition: all 0.3s;
		}
		.box .icon li a:hover{
		    color: #4834d4;
		    background-color: #fff;
		    border-color: #4834d4;
		}
		@keyframes animate{
		    80%{ width: 90%; }
		    85%{ width: 95%; }
		    93%{ width: 85%; }
		    100%{ width: 100%; }
		}
		@media only screen and (max-width:990px){
		    .box{ margin-bottom: 30px; }
		}
		@media only screen and (max-width:479px){
		    .box .title{ font-size: 20px; }
		}
	</style>
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
							<h1>医院管理系统 <span>Hospital information management system</span></h1>
						</header>
						<div class="main clearfix">
							<div id="st-trigger-effects" class="column">
								  <div class="col-md-4 col-sm-6">
                    <div class="box">
                        <img src="images/img-3.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">MuYaHai</h3>
                            <span class="post">overcomer</span>
                        </div>
                        <ul class="icon">
                            <li><a href="#"><i class="fa fa-search"></i></a></li>
                            <li><a href="#"><i class="fa fa-link"></i></a></li>
                        </ul>
                    </div>
                </div>
							</div>
							<div class="column">
								<div class="col-md-4 col-sm-6">
                    <div class="box">
                        <img src="images/img-1.jpg" alt="">
                        <div class="box-content">
                            <h3 class="title">MuYaHai</h3>
                            <span class="post">overcome</span>
                        </div>
                        <ul class="icon">
                            <li><a href="#"><i class="fa fa-search"></i></a></li>
                            <li><a href="#"><i class="fa fa-link"></i></a></li>
                        </ul>
                    </div>
                </div>
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