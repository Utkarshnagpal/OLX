<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OLX - Home</title>

<style> 
*
{
	margin: 0px;
	padding: 5px 5px;
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


    width: 220px;
    padding: 20px;
    position: absolute;
    padding-right:20px;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background : transparent;
    text-align: center;
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
	margin:20px auto;
	text-align:center;
	border:2px solid #2ecc71;
	padding: 14px 40px;
	outline: none;
	color:black;
	border-radius: 24px;
    transition:0.25s;
	cursor:pointer;
}
.box input[type="submit"]:hover{
	background: #2ecc71;
}

</style>

</head>
<body>

<header>
	<div class = "main">
		<ul>
		<li><a href = "index.html"><font color="black"; size = "150%";><b>O</b></font><font color="green"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
		
		<li><a href = "Homepage.jsp"><font color="black"><b>Home</b></font> </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "faq.html"><font color="black"><b>FAQs</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "login.html"><font color="black"><b>Login</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<li><a href = "signup.html"><font color="black"><b>Signup</b></font></a></li>
	
		</ul>
	
	</div>
</header>


</br>
</br>
</br>
</br> 
<center><p style="font-size: 150%" ><b>Welcome to OLX! We create a link between those who wish to sell their goods and those who want to purchase those goods. </b></p>
<p style="font-size: 150%"><b>Choose the role you want to play!</b></p></center>
<!-- <a href = "Registration_HTML.html"><font color="#a3c2c2"; style = "font-size: 150%";>Post your Ad</font></a><br><br>
<a href = "Registration_HTML.html"><font color="293d3d"; style = "font-size: 150%";>Buy a product</font> </a>
<input type="submit" name = "" value="Post your Ad"></br></br>
<input type="submit" name = "" value="Buy a product">
-->

<center>
	<form class="box" action="Welcome.html" method="post">
		<img src="images/cart.gif" alt="This is my animated image" height="110" width="110">
	  
		<input style = "font-size: 120%"type="submit" name="" value="Post your ad">
		<input style = "font-size: 120%" type="submit" name="" value="Buy something">
	  

		<p><a href="validateLoginServlet"><h2 style="color:white ;text-align:center"></a></p>
		<p><a href="validateLoginServlet"><h2 style="color:Navy ;text-align:center"></a></p>

	</form>
</center>
</body>
</html>