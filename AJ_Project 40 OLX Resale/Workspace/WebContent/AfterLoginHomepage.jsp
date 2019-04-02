<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<head>
<meta charset="ISO-8859-1">
<title>OLX - Home</title>

<style> 
*
{
	margin: 0px;
	padding: 3px 2px;
	font-family: Calibri Light;
}

body
{
	background-image: url('images/BG2.png');
	background-size: cover;
	background-position: top ;
}
ul
{
	float: middle;
	list-style-type: none
	margin-top:25px
}
ul li
{
	display: inline-block;
	text-decoration: none;
}
ul li a:
{
	text-decoration: none;
	color: 
	padding:5px  20px
	border:
	display: inline-block;
}

li a
{
	text-decoration: none;
	color: 
	padding:5px  20px
	border: 
} 


.box h2{
	color: WHITE;
	text-transform: uppercase;
	font-weight: 500;
}
.box input[type="submit"]
{
	width: 300px;
    background: none;
    display: block; 
	margin:auto;
	text-align:center;
	border:2px solid #2ecc71;
	padding: 14px;
	outline: none;
	color:black;
	border-radius: 24px;
    transition:0.25s;
	cursor:pointer;
}
.box input[type="submit"]:hover{
	background: #2ecc71;
}
.rating
{
text-decoration: none;
width: 150px;
position:right;
    background: none;
    display: block; 
	margin:auto;
	text-align:center;
	border:2px solid #2ecc71;
	padding: 14px;
	outline: none;
	color:black;
	border-radius: 24px;
    transition:0.25s;
	cursor:pointer;
}
.rating:hover
{
background: #2ecc71;
}
</style>

</head>
<body>

<header>
	<div class = "main">
		<ul>
		<li><a href = "#"><font color="black"; size = "150%";><b>O</b></font><font color="green"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
		
		<li><a href = "AfterLoginHomepage.jsp"><font color="black"><b>Home</b></font> </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "DisplayAllServlet"><font color="black"><b>Products</b></font> </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "faq.html"><font color="black"><b>FAQs</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "viewQueries.jsp"><font color="black"><b>Queries</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "LogoutServlet"><font color="black"><b>Logout</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<!--  <li><a href = "Signup_HTML.html"><font color="black"><b>Signup</b></font></a></li>-->
	
		</ul>
	
	</div>
</header>

<br>
</br> 
<center><p style="font-size: 150%" ><b>Welcome to OLX! </p><p>We create a link between those who wish to sell their goods and those who want to purchase those goods. </b></p>
<p style="font-size: 150%"><b>Choose the role you want to play!</b></p></center>
<!-- <a href = "Registration_HTML.html"><font color="#a3c2c2"; style = "font-size: 150%";>Post your Ad</font></a><br><br>
<a href = "Registration_HTML.html"><font color="293d3d"; style = "font-size: 150%";>Buy a product</font> </a>
<input type="submit" name = "" value="Post your Ad"></br></br>
<input type="submit" name = "" value="Buy a product">
-->
<%@ page session = "true" %>
<%session.setAttribute("uid",request.getParameter("name")); %>

<center>
<img src="images/cart.gif" alt="This is my animated image" height="110" width="110">
	<form class="box" action="postItems.jsp" method="post">
		<input style = "font-size: 120%" type="submit" name="" value="Post your ad">
		<p><a href="http://localhost:8090/001_OLXResale/postItems.html"><h2 style="color:white ;text-align:center"></a></p>
		</form><form class="box" action="buyFilter.jsp" method="post">
		<input style = "font-size: 85%" type="submit" name="" value="Buy something">
	  </form>

</center>
<br>
<a href="viewFeedback.jsp"><font  class = "rating" color="black"><b>Show Ratings</b></font></a>
</body>
</html>