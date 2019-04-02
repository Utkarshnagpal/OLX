<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body{
	margin:0;
	padding:0;
	font-family: sans-serif;
	background : #004466;
}
.box{
	width: 300px;
	padding: 40px;
	position: absolute;
	top:50%;
	left: 50%;
	transform: translate(-50%,-50%);
	background : #191919;
	text-align: center;
}
.box h1{
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "password"]{
  border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #3498db;
  padding: 14px 10px;
  width: 200px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
}
.box input[type = "text"]:focus,.box input[type = "password"]:focus{
  width:280px;
  border-color: #2ecc71;
}
.box input[type="submit"]
{
	border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #2ecc71;
  padding: 14px 40px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
  cursor:pointer;
}
.box input[type="submit"]:hover{
  background: #2ecc71;
}
</style>
</head>
<TITLE>Buy Product</title>
<body>
<center>
<br>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br><br>
</center>
		<form class="box" action="insertBuyerQuery.jsp" method="post">
      <h1>Buy Product</h1>
      <input type="text" name="itemId" placeholder="Enter Item Id" required>
       <input type="text" name="userId" placeholder="Enter User Id" required>
      <input type="text" name="query" placeholder="Enter your query" required>
      <input type="submit" value="Post Query">
		</form> 
</body>
</html>
