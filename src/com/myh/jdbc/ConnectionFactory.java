package com.myh.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//�����ݿ����ӹ�������ʵ���������з�װ
public class ConnectionFactory {
		private String driverClassName = "com.mysql.jdbc.Driver"; 
	  private String url = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
	//�������ݿ�url��ע������sql���ᱨsevertime��Ӧ����ʱ�����⣬�����serverTimezone=GMT%2B8&useSSL=false
	  private String userName = "root"; 
	  private String password = "123456"; 
	  private static ConnectionFactory connectionFactory=null; 
	  
	  private ConnectionFactory() { 
	     
	    try { 
	      Class.forName(driverClassName); 
	      //��������
	    } catch (ClassNotFoundException e) { 
	    	//�쳣���������ж������Ƿ���سɹ���֮ǰ��û�м�������������Ϊ��ҳ���������
	      e.printStackTrace(); 
	    } 
	  } 
	   
	  public Connection getConnection() throws SQLException 
	  { 
	    return DriverManager.getConnection(url, userName, password); 
	    //�������ݿ�
	     
	  } 
	   
	  public static ConnectionFactory getInstance() 
	  {   
	    if (null==connectionFactory) { 
	      connectionFactory=new ConnectionFactory(); 
	    } 
	    return connectionFactory; 
	     
	  } 
	} 

