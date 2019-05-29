<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.List"%>
<%@page import="com.myh.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息界面</title>
<link href="${pageContext.request.contextPath}/CSS/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/CSS/myh.css" rel="stylesheet">
<style type="text/css">
td {
	font-size: 12px;
}

h2 {
	margin: 0px
}
</style>
<script type="text/javascript">
	function check() {
			if (phone.value == "") {
				alert("请输入更新信息！");
				return false;
			}
			if (isNaN(phone.value)) {
				alert("格式错误！");
				return false;
			}
			return true;
		}
</script>


</head>
<body style="background-color: 	#F0F0F0">
	<table class="table table-striped">
		<tr bgcolor="#EECBAD">
			<td align="center" colspan="9">
				<h2>所有信息</h2>
			</td>
		</tr>
		<tr align="center">
			<td><b>编号</b></td>
			<td><b>医生姓名</b></td>
			<td><b>医院名称</b></td>
			<td><b>科室</b></td>
			<td><b>用户类型</b></td>
			<td><b>地址</b></td>
			<td><b>电话</b></td>
			<td><b>修改</b></td>
			<td><b>删除</b></td>
		</tr>
		<%
			List<User> list = (List<User>) request.getAttribute("list");
			if (list == null || list.size() < 1) {
				out.print("没有数据！");
			} else {
				for (User user : list) {
		%>
		<tr align="center"  bgcolor="#FFF8DC">
			<td><%=user.getId()%></td>
			<td><%=user.getDoctorname()%></td>
			<td><%=user.getHospitalname()%></td>
			<td><%=user.getSection()%></td>
			<td><%=user.getMold()%></td>
			<td><%=user.getAddress()%></td>
			<td><%=user.getPhone()%></td>
			<td>
			<a href="update.jsp">修改</a>
			</td>
		    <td>
		    <a href="DeleteServlet?id=<%=user.getId()%>">删除</a>
		    </td>


		</tr>
		<%
			}
			}
		%>
	</table>
	<h2 align="center">
				<a href="index.jsp" class="btn btn-default">返回添加信息页面</a>
	</h2>
	<a href="finddetail.jsp" class="myh">根据ID查询点击此处</a>&nbsp;&nbsp;<a href="FindServlet" class="myh1">查询信息</a>&nbsp;&nbsp;
				<a href="update.jsp" class="myh2">修改信息</a>
</body>
</html>