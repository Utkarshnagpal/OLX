package com.demo.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.sample.bean.AddressBean;
import com.demo.sample.daoClass.Signup2Dao;
import com.demo.sample.daoClass.signupDao;

/**
 * Servlet implementation class ServletSignup2
 */
public class ServletSignup2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSignup2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
PrintWriter out = response.getWriter();

String id = signupDao.userId;
String city = request.getParameter("city");
String sublocation = request.getParameter("location");
String state = request.getParameter("state");
String pincode = request.getParameter("pincode");
String country = request.getParameter("country");
String street = request.getParameter("street");

AddressBean sb  = new AddressBean();
sb.setUser_id(id);
sb.setCity(city);
sb.setSublocation(sublocation);
sb.setState(state);
sb.setPincode(pincode);
sb.setCountry(country);
sb.setStreet(street);

Signup2Dao sd = new Signup2Dao();
if(sd.insert(sb))
{
RequestDispatcher r = request.getRequestDispatcher("login.html");
r.forward(request, response);


}
else
{
//RequestDispatcher r=request.getRequestDispatcher("");
//r.forward(request, response);
out.println("Fail");
}



	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
