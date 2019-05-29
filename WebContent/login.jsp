<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link href="${pageContext.request.contextPath}/CSS/bootstrap.min.css" rel="stylesheet">
</head>
<script type="text/javascript">
	function customer(){
		window.location=encodeURI("index.jsp");
	}
	function mima(){
		window.location=encodeURI("mima.jsp");
	}
	function zhuce(){
		window.location=encodeURI("zhuce1.jsp");
	}
		
</script>



<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="./">医院人员信息管理系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录界面</a>
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
            <form class="form-signin" action="LoginServlet" name="input" method="post"  method="post">
                <h2 class="form-signin-heading">登录到添加页面</h2>
                <label for="inputEmail">用户名称</label>
                <input type="text" id="inputEmail" name="username" class="form-control" placeholder="请输入用户名称" required autofocus><br>
                <label for="inputPassword">密码</label>
                <input type="password" id="inputPassword" name="password" class="form-control" placeholder="请输入密码" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me" checked="checked"> 记住密码&nbsp;&nbsp;&nbsp;
                 		<select style="width: 10" name="leixing">
							<option>管理员</option>
							<option>医生</option>
							<option>病例</option>
						</select>
                    </label>
                </div>
                
                <input type="submit" class="btn btn-primary" id="btn-login">
                <a href="zhuce1.jsp" class="btn btn-default">注册</a>
                <a href="mima.jsp" class="btn btn-default">修改密码</a>
            </form>
            <iframe style="display: none;" name="submitFrame" src="about:blank"></iframe>
        </div>
        <div class="col-md-4">
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</body>
</html>