<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link href="${pageContext.request.contextPath}/CSS/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./">医院人员信息管理系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注意:修改密码界面</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <form class="form-signin" action="UpdateMima" name="input" method="post">
                <h2 class="form-signin-heading">修改密码页面</h2>
                 <label for="inputUserName">用户名称</label>
                <input type="text" id="inputUserName" name="username" class="form-control" placeholder="请输入用户名称" required autofocus><br>
                <label for="inputPassword">用户密码</label>
                <input type="text" id="inputPassword" name="password" class="form-control" placeholder="请输入用户密码" required autofocus><br>
                <input type="submit" class="btn btn-primary" id="btn-login" value="确认">
                <a href="login.jsp" class="btn btn-default">返回登陆界面</a>
            </form>
            <iframe style="display: none;" name="submitFrame" src="about:blank"></iframe>
        </div>
        <div class="col-md-4">
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</body>
</html>