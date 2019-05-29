package com.myh.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.myh.bean.User;
//对sql语句，进行封装
public class UserJdbc {
	private PreparedStatement ptmt = null;
	private ResultSet rs = null;

	public UserJdbc() {
	}
	
	
	public void findAll(Connection conn) throws SQLException
	{
		//查询语句
		
	}
	
	public void delete(Connection conn, String id) throws SQLException
	{
		//删除语句进行封装
		String sql = "delete from tb_inf where id=?";
		try{
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, id);
			ptmt.executeUpdate();
			
		}finally{
			if (null!=ptmt) {
				ptmt.close();
			}
			
			if (null!=conn) {
				conn.close();
			}
			
		}
		
	}
	
	public void update(Connection conn, String id,String phone,String doctorname,String hospitalname,String section, String mold, String address) throws SQLException
	{
		//更新数据语句封装
		String sql = "update tb_inf set doctorname=?,hospitalname=?,section=?,mold=?,address=?,phone=? where id=?";
		try{
			ptmt = conn.prepareStatement(sql);
			ptmt.setString(1, id);
			ptmt.setString(2, doctorname);
			ptmt.setString(3, hospitalname);
			ptmt.setString(4, section);
			ptmt.setString(5, mold);
			ptmt.setString(6, address);
			ptmt.setString(7, phone);
			ptmt.executeUpdate();
			
		}finally{
			if (null!=ptmt) {
				ptmt.close();
			}
			
			if (null!=conn) {
				conn.close();
			}
			
		}
	}
	public void QueryId(Connection conn,String id)
	{
		User user = new User();
		String sql= "select * from tb_inf where id=?";
		try{
			if(rs.next())
			{
				user.setDoctorname(rs.getString("doctorname"));
				user.setHospitalname(rs.getString("hospitalname"));
				user.setMold(rs.getString("mold"));
				user.setSection(rs.getString("section"));
				user.setAddress(rs.getString("address"));
				user.setPhone(rs.getString("phone"));
			}
		}catch (NumberFormatException | SQLException e){
			e.printStackTrace();
		}
	}
	

}

