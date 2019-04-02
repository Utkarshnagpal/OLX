package com.demo.sample.daoClass;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.demo.sample.bean.itemsBean;
import com.demo.sample.connection.DBConnection;
import com.demo.sample.daoInterface.itemDetailsInterface;

public class itemDetailsDao implements itemDetailsInterface{

		Connection conn=DBConnection.getConnection();
           public boolean insert(itemsBean s)
           {                                  
                          
                         String item_name = s.getItem_name();  
        	   			String item_category_id = s.getCategory_id();
                         int years = s.getYears();
                         int temp_id = autoGenerateId();
                       /*  String user_id = signupDao.userId;*/
                         String user_id=s.getUser_id();
                           int price = s.getPrice();
                           boolean status = false;
                           
     try{
       PreparedStatement ps = conn.prepareStatement("insert into item_details values(?,?,?,?,?,?)");
       ps.setString(1,item_name);
       ps.setString(2, item_category_id);
       ps.setInt(3, years);
       ps.setInt(4, temp_id);
       ps.setString(5, user_id);
       ps.setInt(6, price);
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
           
     public int autoGenerateId()
     {
           int val=0;
           try
           {
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery("select item_id_seq.nextval from dual");
           
                while(rs.next())
                {
                     val=rs.getInt(1);
                }
                
           }catch(SQLException e)
           {
                
           }
           return val;
     }

           
	}
