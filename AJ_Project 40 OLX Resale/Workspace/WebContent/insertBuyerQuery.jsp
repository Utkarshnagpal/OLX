<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>QUERY POSTED</title>
</head>
<body>
<center>
<br>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br><br>
</center>
<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement" %>
<%@page import="com.demo.sample.connection.*" %>
<%@page import="com.demo.sample.daoClass.*" %>
<% 
try{

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");

String num = request.getParameter("itemId");
String query1 = request.getParameter("query");
//HttpSession s=request.getSession(true);
//String user_id=(String)s.getAttribute("uid");
String user_id = request.getParameter("userId");
PreparedStatement ps = null ;
String query = "insert into messages values(?,?,?) ";

ps = c.prepareStatement(query);

ps.setString(1,num);
ps.setString(2, query1);
ps.setString(3, user_id);

//out.print(user_id+"posted by");
request.setAttribute("abc",user_id);
int i = ps.executeUpdate();
if(i>0)
	{
	RequestDispatcher r = request.getRequestDispatcher("queryPostedSuccess.jsp");
	r.forward(request, response);
	}

} 
catch (Exception e) {
   
    e.printStackTrace();
}%>

</body>
</html>
