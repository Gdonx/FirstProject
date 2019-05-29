package com.myh.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myh.jdbc.ConnectionFactory;
import com.myh.jdbc.UserJdbc;

/**
 * Servlet implementation class DeleteServler
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet() {
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
			UserJdbc userDao = new UserJdbc();
			//Ӧ����ʵ����UserJdbc,����sql����
			Connection conn=ConnectionFactory.getInstance().getConnection();
			//�������ݿ�
			userDao.delete(conn, id);
			
		}catch (Exception e){
			e.printStackTrace();
		}
		response.sendRedirect("FindServlet");
		//�ض���
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
