package com.demo.sample.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.sample.bean.signupBean;
import com.demo.sample.daoClass.signupDao;

/**
 * Servlet implementation class InsertServlet
 */
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("last");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String contact = request.getParameter("contact");
        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        
		signupBean sb = new signupBean();
		
		sb.setFname(firstname);
		sb.setLname(lastname);
		sb.setAge(age);
		sb.setGender(gender);
		sb.setContact_number(contact);
		sb.setUser_id(username);
		sb.setPassword(password);
		sb.setEmail(email);
		sb.setAddress(address);
		
		signupDao sd = new signupDao();
		
		if(sd.insert(sb)){
			RequestDispatcher r = request.getRequestDispatcher("address.html");
			r.forward(request, response);
		}
		else
		{
			RequestDispatcher r = request.getRequestDispatcher("insertFail.jsp");
			r.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
