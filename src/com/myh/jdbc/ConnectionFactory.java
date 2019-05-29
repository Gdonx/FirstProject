package com.myh.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//对数据库链接工厂化，实例化，进行封装
public class ConnectionFactory {
		private String driverClassName = "com.mysql.jdbc.Driver"; 
	  private String url = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&serverTimezone=GMT%2B8&useSSL=false";
	//定义数据库url，注意运行sql。会报severtime，应该是时区问题，需添加serverTimezone=GMT%2B8&useSSL=false
	  private String userName = "root"; 
	  private String password = "123456"; 
	  private static ConnectionFactory connectionFactory=null; 
	  
	  private ConnectionFactory() { 
	     
	    try { 
	      Class.forName(driverClassName); 
	      //加载驱动
	    } catch (ClassNotFoundException e) { 
	    	//异常处理。可以判断驱动是否加载成功，之前就没有加载驱动，还以为是页面代码问题
	      e.printStackTrace(); 
	    } 
	  } 
	   
	  public Connection getConnection() throws SQLException 
	  { 
	    return DriverManager.getConnection(url, userName, password); 
	    //连接数据库
	     
	  } 
	   
	  public static ConnectionFactory getInstance() 
	  {   
	    if (null==connectionFactory) { 
	      connectionFactory=new ConnectionFactory(); 
	    } 
	    return connectionFactory; 
	     
	  } 
	} 

