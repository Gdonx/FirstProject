package com.myh.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myh.bean.User;
import com.myh.jdbc.ConnectionFactory;
import com.myh.jdbc.UserJdbc;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String doctorname = request.getParameter("doctorname");
		String hospitalname = request.getParameter("hospitalname");
		String section = request.getParameter("section");
		String mold = request.getParameter("mold");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url= "jdbc:mysql://localhost/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			String un= "root";
			String pw = "123456";
			Connection conn = DriverManager.getConnection(url,un,pw);
			String sql = "update tb_inf set doctorname='"+doctorname+"'," + "hospitalname='"+hospitalname+"',section='"+section+"',mold='"+mold+"',address='"+address+"',phone='"+phone+"' where id='"+id+"'";
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
		//PrintWriter out = response.getWriter();
		//out.println ("<script language=javascript>alert('ÐÞ¸Ä³É¹¦');window.location='FindServlet'</script>");
		response.sendRedirect("xiugai.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
