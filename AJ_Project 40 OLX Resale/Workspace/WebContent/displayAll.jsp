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
<title>All Products</title>

</head>
<body>
<%@page import="com.demo.sample.bean.*" %>
<%@page import="java.util.*" %>
<% ArrayList<itemsBean> ab = (ArrayList<itemsBean>)request.getAttribute("disp"); %>
	
<center>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
		</center>
<center>
<table class = "tableClass" id="t01" align = "center" border=3>
<tr>
 <th>Item Name</th>
    <th>Item Cost</th>
     <th>Years of Usage</th>
     <th>Item Id</th>
     </tr>
<%Iterator<itemsBean> i= ab.iterator();

while(i.hasNext()){
       itemsBean sb=(itemsBean)i.next(); %>
       <tr>
             <td style="text-align: center; vertical-align: middle; "><%=sb.getItem_name()%></td>
             <td style="text-align: center; vertical-align: middle;"><%= sb.getPrice()%></td>
             <td style="text-align: center; vertical-align: middle;"><%= sb.getYears()%></td>
             <td style="text-align: center; vertical-align: middle;"><%= sb.getItem_id()%></td>
       </tr>
       <% String uid=sb.getUser_id(); %>
       <%session.setAttribute("uid",uid); %>
 <%} %>
 </table>
<br>
<center><form class="box" action = "buyProduct.jsp">
<input type="submit" name="buy"  value="Buy Product" >
</form>
<form class="box" action = "askQuery.jsp">
<input type="submit" name="buy"  value="Ask Something!!" >
</form>
<form class="box" action = "buyFilter.jsp">
<input type="submit" name="buy"  value="Go Back" >
</form>

</center>
</body>
</html>
