<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<%
		request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="user" class="com.myh.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			// 数据库用户名
			String us = "root";
			// 数据库密码
			String pw = "123456";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url, us,
					pw);
			String sql = "insert into tb_mima(username,password) values(?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			// 对SQL语句中的第1个参数赋值
			ps.setString(2, user.getPassword());
			// 对SQL语句中的第2个参数赋值
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if (row > 0) {
				// 更新成输出信息
				response.sendRedirect("zhucesuccess.jsp");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="login.jsp">返回登陆界面</a>

</body>
</html>