package com.demo.sample.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.sample.connection.DBConnection;
import com.demo.sample.daoClass.signupDao;

/**
 * Servlet implementation class feedbackServlet
 */
public class feedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public feedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Connection conn = DBConnection.getConnection();
		
		
		//String user_id = signupDao.userId;
		int num1 ,num2 ,num3, num4, num5, num6, num7;
		HttpSession s=request.getSession(true);
		String user_id=(String)s.getAttribute("uid");
		num1= Integer.parseInt(request.getParameter("ques1"));
		num2= Integer.parseInt(request.getParameter("ques2"));
		num3= Integer.parseInt(request.getParameter("ques3"));
		num4= Integer.parseInt(request.getParameter("ques4"));
		num5= Integer.parseInt(request.getParameter("ques5"));
		num6= Integer.parseInt(request.getParameter("ques6"));
		num7= Integer.parseInt(request.getParameter("ques7"));
		
		int avg = (num1+num2+num3+num4+num5+num6+num7)/7;
		try{
			
			PreparedStatement ps = conn.prepareStatement("insert into feedback values(?,?)");
			 ps.setString(1, user_id);
             ps.setInt(2, avg);
      
             int i = ps.executeUpdate();
             if(i>0)
      		{
            	 RequestDispatcher r = request.getRequestDispatcher("AfterLoginHomepage.jsp");
            	 r.forward(request, response);
      		}
		}catch (SQLException e) {
		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
