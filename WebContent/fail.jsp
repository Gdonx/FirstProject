<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>失败</title>
<script src="https://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<style>
body {
	overflow:hidden
}
.box1 img {
	width:100%;
	height:100%;
	position:absolute;
	top:0;
	left:0;
	transition:all linear 0.5s;
}
.box1 {
	width:338px;
	height:600px;
	background:rgba(0,0,0,.1);
	position:relative;
	margin:0 auto;
	transform:rotate(-30deg) skew(25deg);
}
.box1:hover img:nth-child(4) {
	transform:translate(160px,-160px);
	opacity:1;
}
.box1:hover img:nth-child(3) {
	transform:translate(120px,-120px);
	opacity:.6;
}
.box1:hover img:nth-child(2) {
	transform:translate(80px,-80px);
	opacity:.4;
}
.box1:hover img:nth-child(1) {
	transform:translate(40px,-40px);
	opacity:.2;
}
</style>
</head>
<body>
<div class="box1">
    <a href="index.jsp"><img src="${pageContext.request.contextPath}/picture/1.png">
    <img src="${pageContext.request.contextPath}/picture/1.png">
    <img src="picture/1.png">
    <img src="picture/1.png"></a>
</div>

<script>

</script>
</body>
</html>