package com.demo.sample.daoClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.demo.sample.bean.AddressBean;
import com.demo.sample.connection.DBConnection;
import com.demo.sample.daoInterface.addressInterface;

public class Signup2Dao implements addressInterface {
                
                Connection conn = DBConnection.getConnection();
                public boolean insert(AddressBean s)
                {                                  
                                String id = signupDao.userId;
                                String city = s.getCity();
                                String sublocation = s.getSublocation();
                                String state = s.getState();
                                String pincode = s.getPincode();
                                String country = s.getCountry();
                                String street = s.getStreet();
                                
                                boolean status = false;
                                
          try{
            PreparedStatement ps = conn.prepareStatement("insert into address values(?,?,?,?,?,?,?)");
            ps.setString(1,id);
            ps.setString(2, city);
            ps.setString(3, sublocation);
            ps.setString(4, state);
            ps.setString(5, pincode);
            ps.setString(6, country);
            ps.setString(7, street);
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

