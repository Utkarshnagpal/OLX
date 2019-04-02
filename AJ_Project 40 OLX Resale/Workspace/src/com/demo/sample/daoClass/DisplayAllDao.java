package com.demo.sample.daoClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.demo.sample.bean.itemsBean;
import com.demo.sample.connection.DBConnection;

public class DisplayAllDao {
		Connection conn = DBConnection.getConnection();
	       private String item_name;
	       private String category_id;
	       private int years;
	       private int item_id;
	       private String user_id;
	       private int price;

	       public ArrayList<itemsBean> displayAll( ) {
	              
	              
	              
	              ArrayList<itemsBean> a1=new ArrayList<itemsBean>();
	              try {
	            	  PreparedStatement ps = null ;
	            	  Statement st=conn.createStatement();
	      
	      			ResultSet rs=st.executeQuery("select * from item_details");
	                     //ps.setString(1, category);
	                    // ps.setString(2, city);
	                     
	                     while(rs.next()) {
	                           itemsBean sb=new itemsBean();
	                           sb.setItem_name(rs.getString(1));
	                           sb.setCategory_id(rs.getString(2));
	                           sb.setYears(rs.getInt(3));
	                           sb.setItem_id(rs.getInt(4));
	                           sb.setUser_id(rs.getString(5));
	                           sb.setPrice(rs.getInt(6));
	                           a1.add(sb);
	                     }
	                     
	                     
	                     
	              } catch (SQLException e) {
	                     System.out.println("error in display all");
	                     e.printStackTrace();
	              }
	              
	              return a1;
	}

}
