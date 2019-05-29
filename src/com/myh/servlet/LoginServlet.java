package com.myh.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		
		String leixing = request.getParameter("leixing");
		
		String username = request.getParameter("username");
		
		String password = request.getParameter("password");
		
		try { 
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC&useSSL=true";
		
			String user = "root";
			
			String pass = "123456";
			
			Connection conn = DriverManager.getConnection(url,user,pass);
		
			String sql = "select * from tb_mima where username=? and password=?";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1,username);
			
			ps.setString(2, password);
			
			ResultSet  rs = ps.executeQuery();
			
			if(rs.next()) {
				
					response.sendRedirect("FindServlet");
				
			}
			
			else {
				
				
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println ("<script language=javascript>alert('√‹¬Î¥ÌŒÛ');window.location='login.jsp'</script>");
				
				
			}
			
			rs.close();
			
			ps.close();
			
			conn.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
