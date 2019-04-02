<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy Product</title>
</head>

<style> 
*
{
                margin: 0px;
                padding: 5px 5px;
                font-family: Calibri Light;
                list-style:none;
                text-decoration: none;
}

body
{
                background-image: url('images/BG2.png');
                background-size: cover;
                background-position: top ;
                list-style:none;
}

header ul li
{
                display: inline-block;
}

p
{
                float: right;
                margin: 5px;
                padding: 5px 5px;
                font-family: Calibri Light;
}

ul.menu li  ul li a
{
                text-decoration: none;
                background-color: white;
                padding:5px  20px
                border: 
                list-style: none;
                opacity: 0.6;
                display: inline-block;
}

ul.menu li a div 
{
                width:20px; 
                height:25%;
                background-color:black;
                margin: 2px 0;
                list-style:none;
}

.box h2{
font-size:40px;
font-family: "Times New Roman", Times, serif;
  color: #2db92d;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"]{
  border:0;
  font-size:20px;
	background: white;
	color:Black;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #2ecc71;
  padding: 15px 85px;
  width: 200px;
  outline: none;
  border-radius: 24px;
  transition:0.25s;
}
select { 
   border:0;
   font-size:20px;
	background:white;
	display: block;
  margin:20px auto;
  text-align-last : center;
  border:2px solid #2ecc71;
  padding: 15px 85px;
  width: 375px;
  display: block;
  outline: none;
  color:black;
  border-radius: 24px;
  transition:0.25s; 
  position: relative; 
  cursor: pointer; 
} 
.box input[type = "text"]:focus,{
  width:280px;
  border-color: #2ecc71;
}
.search_categories .select{
  width: 120%;
  background:url('arrow.png') no-repeat;
  background-position:80% center;
}
.box input[type="submit"]
{
	border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #2ecc71;
  padding: 14px 60px;
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
<body>

<header>
                                <ul>
                                                <li><a href = "AfterLoginHomepage.jsp"><font color="black"; size = "150%";>O</font><font color="green"; size = "150%";>L</font><font color="blue"; size = "150%";>X</font> </a></li> &nbsp;&nbsp;&nbsp;&nbsp;
                                                <li><a href = "AfterLoginHomepage.jsp"><font color="black"><b>Home</b></font> </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <li><a href = "DisplayAllServlet"><font color="black"><b>Products</b></font> </a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <li><a href = "faq.html"><font color="black"><b>FAQs</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <li><a href = "viewQueries.jsp"><font color="black"><b>Items Posted</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <li><a href = "AfterLogout.html"><font color="black"><b>Logout</b></font></a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </ul>
     
                
</header>

<!-- <ul class = "menu">
                <li>
                                <a href = "#">
                                <div></div>
                                <div></div>
                                <div></div>
                                </a>
                                                <ul>
                                                                <li><a href = "#"><font color="black">My Orders</font> </a></li>
                                                                <li><a href = "#"><font color="black">Items posted</font> </a></li>
                                                                <li><a href = "Login_HTML.html"><font color="black">Logout</font> </a></li>
                                                </ul>
                </li>
</ul> -->
<br><br>
<center>
                <font color="black"; style = "font-size: 200%; text-decoration: none;"><b>SEARCH BY</b></font>&nbsp;&nbsp;&nbsp;
                <form class = "box" action = "DisplayFilterServlet" method="post">
                 <input type="text" name="city" id="city" placeholder="City" required>
                                <select type = "text" name = "search_categories" id = "search_categories" required> 
                                                
                                                <option value = "C01">Electronics</option>
                                                <option value = "C02">Clothing</option>
                                                <option value = "C03">Household</option>
                                                <option value = "C04">Miscellaneous</option>
                                </select>
                                <select type="text" name = "price"  id = "price" required> 
                                               
                                                <option value ="asc">Low to High</option>
                                                <option value ="desc">High to Low</option>
                                </select>
                             
                                <input type = "submit" name = "" value = "Apply" id = "apply">
                </form>
                 <form class="box" action = "DisplayAllServlet" method="post">
                 <input type="submit" name = "" value = "Show All Products" id = "apply">
                 </form>
</center>
</body>
</html>

