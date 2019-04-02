<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style> 
body
{
background-image: url('images/bgblue7.jpg');
background-size: cover;
}

.tableClass
{
background-color: white;
border-style: solid;
border-width: 5px;
border-color: 
}

.olx 
{
text-decoration: none;
}
.box input[type = "text"]{
  border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid  #F1C40F;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
}
.box input[type = "text"]:focus{
  width:280px;
  border-color:#F1C40F;
}
.box input[type="submit"]
{
	border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #F1C40F;
  padding: 14px 40px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
  cursor:pointer;
}
h1{
font-size:20px;
font-family: "Times New Roman", Times, serif;
  color: #F1C40F;
  text-transform: uppercase;
  font-weight: 100;
}
.box input[type="submit"]:hover{
  background: #F1C40F;
}
::placeholder { 
  color: white;
  opacity: 1; 
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: left;
}
table#t01 tr:nth-child(even) {
  background-color: #eee;
}
table#t01 tr:nth-child(odd) {
  background-color: #fff;
}
table#t01 th {
  color: white;
  background-color: black;
}
table#t01 {
  width: 50%; 
  background-color: #f1f1c1;
}
</style>
</head>
<TITLE>Item Successfully Posted</title>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement" %>
<%@page import="com.demo.sample.connection.*" %>
<br><br><br>
<center>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br><br>
	 <h1>Your Payment was Successful !!</h1>
	 </center>
	 <table class = "table" align = "middle" id="t01" border=3>
 <br>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
	PreparedStatement ps = null;
	ResultSet resultSet = null;
	
	HttpSession s=request.getSession(true);
	String id=(String)s.getAttribute("itemId"); 
	String query = "delete from item_details where item_id=?"; 
	ps = con.prepareStatement(query); 
	
   ps.setString(1,id);
    resultSet = ps.executeQuery();
	int i = ps.executeUpdate();
	
}
catch(Exception e)
{
	e.printStackTrace();
}

 %>
 </table>
 <br>
 <form class="box" action = "feedback.jsp">
<input type="submit" name="feed"  value="Feedback" >
</form>
   	<br><br><br>
</body>
</html>