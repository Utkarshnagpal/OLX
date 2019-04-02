package com.demo.sample.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.sample.bean.itemsBean;
import com.demo.sample.daoClass.DisplayFilterDao;

/**
 * Servlet implementation class DisplayFilterServlet
 */
public class DisplayFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String city = request.getParameter("city");
     String category = request.getParameter("search_categories");
     String price = request.getParameter("price");
     DisplayFilterDao sd=new DisplayFilterDao();
		ArrayList<itemsBean> a1=sd.displayAll(city, category, price);
		request.setAttribute("disp", a1);
		RequestDispatcher rd=request.getRequestDispatcher("displayFilter.jsp");
		rd.forward(request, response);
		 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
