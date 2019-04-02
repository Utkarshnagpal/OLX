<!DOCTYPE html >
<html>
<head>
<style>
body{
	 margin-top: 10px;
	padding:0;
	font-family: sans-serif;
	background :#191919;
}
.box{
	width: 500px;
	padding: 40px;
	position: absolute;
	top:55%;
	left: 50%;
	transform: translate(-50%,-50%);
	background :#004466 ;
	text-align: center;
}
.box h2{
font-size:40px;
font-family: "Times New Roman", Times, serif;
  color: white;
  text-transform: uppercase;
  font-weight: 500;
}
.box input[type = "text"],.box input[type = "number"]{
  border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align:center;
  border:2px solid #2ecc71;
  padding: 15px 85px;
  width: 200px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
}
select { 
   border:0;
	background: none;
	display: block;
  margin:20px auto;
  text-align-last : center;
  border:2px solid #2ecc71;
  padding: 15px 85px;
  width: 375px;
  display: block;
  outline: none;
  color:#28a428;
  border-radius: 24px;
  transition:0.25s; 
  position: relative; 
  cursor: pointer; 
} 
.box input[type = "text"]:focus,.box input[type = "number"]:focus{
  width:280px;
  border-color:#3498db ;
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
  border:2px solid #3498db;
  padding: 14px 60px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
  cursor:pointer;
}
.box input[type="submit"]:hover{
  background: #3498db;
}
</style>
</head>
<TITLE>Post Your Item</title>
<body>
<center>
<br>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	<br><br><br>
</center>
		<form class="box" action="ItemDetailsServlet">
      <h2>Item Details</h2>
      
      <input type="text" name="item_name" placeholder="Item Name" required>
      
  <select name="category" id="category">
        <option value="C01" selected="selected"><b>Electronics</b></option>
          <option value="C02"><b>Clothing</b></option>
           <option value="C03"><b>Household</b></option>
            <option value="C04"><b>Miscellaneous</b></option>
        </select>
        
       <input type="number" name="years_usage" placeholder="Years of Usage" required>
       
        <input type="text" name="price" placeholder="Item Price" required>
    
      <input type="submit" value="Post The Item">
		</form> 
		<br><br><br>
</body>
</html>
