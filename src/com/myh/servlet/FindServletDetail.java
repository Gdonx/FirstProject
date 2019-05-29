package com.myh.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myh.bean.User;

/**
 * Servlet implementation class FindServletDetail
 */
@WebServlet("/FindServletDetail")
public class FindServletDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServletDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");

		try{
			//��������������ע����������
			Class.forName("com.mysql.jdbc.Driver");
			String url= "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
			String un= "root";
			String pw = "123456";
			Connection conn = DriverManager.getConnection(url,un,pw);
			String sql = "select * from tb_inf where id='"+id+"'";
			Statement statement = conn.createStatement();
			List<User> list = new ArrayList<User>();
			//����
			ResultSet rs =  statement.executeQuery(sql);
			
			while (rs.next()){
				User user = new User();
				user.setId(rs.getString("id"));
				user.setDoctorname(rs.getString("doctorname"));
				user.setHospitalname(rs.getString("hospitalname"));
				user.setMold(rs.getString("mold"));
				user.setSection(rs.getString("section"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
				list.add(user);
			}
			request.setAttribute("list", list);
			rs.close();
			statement.close();
			conn.close();
		}catch(Exception e){
			System.out.println("����ʧ��");
			//���ﶨ����һ�������쳣����
			e.printStackTrace();
		}
		request.getRequestDispatcher("showdetails.jsp").forward(request, response);
}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
