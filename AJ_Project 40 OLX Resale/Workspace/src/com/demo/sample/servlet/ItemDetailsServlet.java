package com.demo.sample.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demo.sample.bean.itemsBean;
import com.demo.sample.daoClass.itemDetailsDao;

/**
 * Servlet implementation class ItemDetailsServlet
 */
public class ItemDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();

		    //<%session.setAttribute("uid",request.getAttribute("name")); %>
		 HttpSession s=request.getSession(true);
		 String user_id=(String)s.getAttribute("uid");
		 //System.out.println(user_id+" user id in servlet");
         String item_name = request.getParameter("item_name");  
			String item_category_id = request.getParameter("category");
         int years = Integer.parseInt(request.getParameter("years_usage"));
           int price =Integer.parseInt(request.getParameter("price"));
         /*  String user_id = signupDao.userId;*/
           
		itemsBean sb  = new itemsBean();
		sb.setItem_name(item_name);
		sb.setCategory_id(item_category_id);
		sb.setYears(years);
		sb.setUser_id(user_id);
		sb.setPrice(price);
		

		itemDetailsDao sd = new itemDetailsDao();
		 if(sd.insert(sb))
		 {
		RequestDispatcher r = request.getRequestDispatcher("itemPostingSuccess.html");
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
