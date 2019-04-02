package com.demo.sample.daoClass;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import com.demo.sample.bean.itemsBean;
import com.demo.sample.connection.DBConnection;

public class DisplayFilterDao {
       Connection conn = DBConnection.getConnection();
       private String item_name;
       private String category_id;
       private int years;
       private int item_id;
       private String user_id;
       private int price;

       public ArrayList<itemsBean> displayAll(String city,String category,String price ) throws ServletException, IOException {
              
              ArrayList<itemsBean> a1=new ArrayList<itemsBean>();
              try {
            	  PreparedStatement ps = null ;
            	  String query = null;
            	  if(price.equals("asc"))
            	  {
            		  query = "select * from item_details where item_category_id=? and user_id in(select user_id from address where city=?) order by price asc";
            	  }
            	  else
            	  {
            		  query = "select * from item_details where item_category_id=? and user_id in(select user_id from address where city=?) order by price desc";
            	  }
            	
            	 
            	ps = conn.prepareStatement(query);
            	
            	 ps.setString(1, category);
                 ps.setString(2, city);
            
            
                 
                 ResultSet rs = null;
              rs=ps.executeQuery();
                  
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

