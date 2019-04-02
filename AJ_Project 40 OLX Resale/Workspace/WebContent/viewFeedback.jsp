<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style> 
	body{
		background:black;
	}
 span{
 	color:gold;
 	font-size:50px;
 }
 
 .centered{
	width: 250px;
	height: 100px;	
	position: absolute;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin: auto;
 }
 
 .black{
 color:white;
 }
 
 </style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page Ratings</title>
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
<% 
try{

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection c= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");

PreparedStatement ps = null ;

String query = "select rating from feedback ";

ps = c.prepareStatement(query);
//int i = ps.executeUpdate();
ResultSet rs = null;
rs = ps.executeQuery();
int count=0, avg=0; 
while(rs.next()) 
{ 
	avg+=rs.getInt("rating");
       count++;
       
  }
	avg = avg/count;
	%> 
	<div class="centered">
	
		<span class="black"><%=avg%></span>
	<%int temp = avg; 
	
	while(temp-->0){
	%>
	<span>&#9733;</span>
	<%} %>
	</div>
	<form class = "circle">
	<br><br><br>
	</form>
	

     
       
       
       
       
       
       
       
       
       
       
<%} 
catch (Exception e) {
   
    e.printStackTrace();
}%>

    
</body>
</html>