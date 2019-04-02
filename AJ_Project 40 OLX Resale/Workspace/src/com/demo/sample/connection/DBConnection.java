package com.demo.sample.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection(){
		Connection c = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Error in Connection");
			e.printStackTrace();
		}
        
        return c;
	}

}
