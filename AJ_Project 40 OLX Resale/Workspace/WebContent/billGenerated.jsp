<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

.box input[type = "text"]:focus{
  width:280px;
  border-color: #F1C40F;
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
.box input[type="submit"]:hover{
  background: #F1C40F;
}
h2{
font-size:20px;
font-family: "Times New Roman", Times, serif;
  color: #F1C40F;
  text-transform: uppercase;
  font-weight: 100;
}
.table
{
border-radius: 25px;
opacity: 0.9;
background: rgba(76, 175, 80, 0.1);
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
caption { 
  display: table-caption;
  text-align: center;
  border:0;
	background: none;
  outline: none;
  color:wHITE;
  border-radius: 24px;
  transition:0.25s;
}
</style>
<title>Bill Preview</title>

</head>
<body>
<center>
<br>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br><br>
</center>
<%@page import="com.demo.sample.bean.*" %>
<%@ page import="java.sql.*" %>
<%@page import="com.demo.sample.connection.*" %>
<%@page import="java.util.*" %>
<% ArrayList<itemsBean> ab = (ArrayList<itemsBean>)request.getAttribute("disp"); %>
<center>
<table class = "table" align = "middle" id="t01" border=3>
<h2 ><b>BILL PREVIEW</b></h2>
 <br>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","hr");
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	
	 String id = request.getParameter("itemId");
	 HttpSession s=request.getSession(true);
	 session.setAttribute("itemId",id); 
	String query = "select item_name , item_id , price from item_details where item_id=?"; 
	preparedStatement = con.prepareStatement(query); 
	
    preparedStatement.setString(1,id);
    resultSet = preparedStatement.executeQuery();
	while(resultSet.next()) 
	{%>
	
<tr>
    <th>Item Name</th>
    <th>Item Id</th>
     <th>Item Cost</th>
  </tr>
  <tr>
<td><%=resultSet.getString("item_name") %></td>
<td><%=resultSet.getString("item_id") %></td>
<td><%=resultSet.getString("price") %></td>

</tr>
<% 
		
	}
    
	out.print("</table>");
}
catch(Exception e)
{
	e.printStackTrace();
}

 %>
 </table>
<br>
<form class="box" action = "PaymentGateway.html">
<input type="submit" name="pay" value="Proceed To Pay">
</form>
</center>

</body>
</html>
