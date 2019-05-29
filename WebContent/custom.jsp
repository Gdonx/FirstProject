<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.List"%>
<%@page import="com.myh.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息界面</title>
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
	<table align="center" width="450" border="1" height="180"
		bordercolor="white" bgcolor="#D1D1D1" cellpadding="1" cellspacing="1">
		<tr bgcolor="#EECBAD">
			<td align="center" colspan="9">
				<h2>所有信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#D1EEEE">
			<td><b>编号</b></td>
			<td><b>医生姓名</b></td>
			<td><b>医院名称</b></td>
			<td><b>科室</b></td>
			<td><b>用户类型</b></td>
			<td><b>地址</b></td>
			<td><b>电话</b></td>
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
		</tr>
		<%
			}
			}
		%>
	</table>
</body>
</html>