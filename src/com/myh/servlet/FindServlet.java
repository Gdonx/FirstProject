package com.myh.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myh.bean.User;

/**
 * Servlet implementation class FindServlet
 */
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
			//加载数据驱动，注册驱动管理
			Class.forName("com.mysql.jdbc.Driver");
			String url= "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			String un= "root";
			String pw = "123456";
			Connection conn = DriverManager.getConnection(url,un,pw);
			String sql = "select * from tb_inf";
			Statement statement = conn.createStatement();
			List<User> list = new ArrayList<User>();
			//数组
			ResultSet resultSet =  statement.executeQuery(sql);
			
			while (resultSet.next()){
				User user = new User();
				user.setId(resultSet.getString("id"));
				user.setAddress(resultSet.getString("address"));
				user.setDoctorname(resultSet.getString("doctorname"));
				user.setHospitalname(resultSet.getString("hospitalname"));
				user.setMold(resultSet.getString("mold"));
				user.setPhone(resultSet.getString("phone"));
				user.setSection(resultSet.getString("section"));
				list.add(user);
			}
			request.setAttribute("list", list);
			resultSet.close();
			statement.close();
			conn.close();
		}catch(Exception e){
			System.out.println("连接失败");
			//这里定义了一个连接异常处理
			e.printStackTrace();
		}
		request.getRequestDispatcher("shows_list.jsp").forward(request, response);
}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
