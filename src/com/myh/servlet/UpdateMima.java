package com.myh.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateMima
 */
@WebServlet("/UpdateMima")
public class UpdateMima extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMima() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url= "jdbc:mysql://localhost/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			String un= "root";
			String pw = "123456";
			Connection conn = DriverManager.getConnection(url,un,pw);
			String sql = "update tb_mima set password='"+password+"'  where username='"+username+"'";
			PreparedStatement ps = conn.prepareStatement(sql);
			/*ps.setString(1, id);
			ps.setString(1, doctorname);
			ps.setString(2, hospitalname);
			ps.setString(3, section);
			ps.setString(4, mold);
			ps.setString(5, address);
			ps.setString(6, phone);*/
			ps.executeUpdate();
			ps.close();
			conn.close();
			/*UserJdbc userDao = new UserJdbc();
			Connection conn=ConnectionFactory.getInstance().getConnection();
			userDao.update(conn, id,phone,doctorname,hospitalname,section,mold,address);*/
		}catch (Exception e){
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println ("<script language=javascript>alert('ÐÞ¸Ä³É¹¦');window.location='login.jsp'</script>");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
