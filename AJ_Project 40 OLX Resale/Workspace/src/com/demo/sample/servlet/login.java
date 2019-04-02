package com.demo.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class login
 */
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.getRequestDispatcher("AfterLoginHomepage.jsp").include(request, response);  
        String name = request.getParameter("name");
        String pass = request.getParameter("pass");
        try
        {
               Class.forName("oracle.jdbc.driver.OracleDriver");
               Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");

               PreparedStatement ps = conn.prepareStatement("SELECT user_id,password FROM user_details where user_id=? and password=?");               		
               ps.setString(1, name);
               ps.setString(2, pass);
              ResultSet rs;
              rs = ps.executeQuery();
             
              
              if(rs.next())
              {
            	  HttpSession session = request.getSession(true);
            		RequestDispatcher r = request.getRequestDispatcher("AfterLoginHomepage.jsp");
        			r.forward(request, response);
              }
              else
              {
                 RequestDispatcher rd = request.getRequestDispatcher("login.html");
                            rd.forward(request,response);
                 JOptionPane.showMessageDialog(null,"You have entered wrong password");
              }
        }catch(Exception ex)
        {
               ex.printStackTrace();
        }

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
