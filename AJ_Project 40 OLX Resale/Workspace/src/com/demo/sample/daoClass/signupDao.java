package com.demo.sample.daoClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.sample.bean.signupBean;
import com.demo.sample.connection.DBConnection;
import com.demo.sample.daoInterface.Interfaces;

public class signupDao implements Interfaces {
	Connection conn=DBConnection.getConnection();
	public static String userId;
	@Override
	public boolean insert(signupBean s) {
		String fname = s.getFname();
		String lname= s.getLname();
		int age = s.getAge();
		String gender = s.getGender();
		String contact = s.getContact_number();
		String user_id = s.getUser_id();
		String password = s.getPassword();
		String email = s.getEmail();
		String address = s.getAddress();
		boolean status = false;
		userId = user_id;
		
		try{
			PreparedStatement ps = conn.prepareStatement("insert into user_details values(?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, fname);
             ps.setString(2, lname);
             ps.setInt(3, age);
             ps.setString(4, gender);
             ps.setString(5, contact);
             ps.setString(6, user_id);
             ps.setString(7, password);
             ps.setString(8, email);
             ps.setString(9, address);
             int i = ps.executeUpdate();
     		if(i>0)
     		{
     			status=true;
     		}
     		else
     		{
     			status=false;
     		}
		}catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}

}
