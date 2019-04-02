<!DOCTYPE html >
<html>
<head>
<style>
body{
	 margin-top: 20px;
	padding:0;
	font-family: sans-serif;
	background :#191919;
}
.box{
	width: 500px;
	padding: 40px;
	position: absolute;
	top:48%;
	left: 50%;
	transform: translate(-50%,-50%);
	background :#004466 ;
	text-align: center;
}
.box h2{
font-size:35px;
font-family: "Times New Roman", Times, serif;
  color: #3CB371;
  text-transform: uppercase;
  font-weight: 500;
}
.box h3{
font-size:15px;
  color: #2E8B57;
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
  border:2px solid  #3498db;
  padding: 14px 60px;
  outline: none;
  color:white;
  border-radius: 24px;
  transition:0.25s;
  cursor:pointer;
}
.box input[type="submit"]:hover{
  background:#2ecc71;
}
</style>
</head>
<TITLE>Item Successfully Posted</title>
<body>

<%out.print(request.getAttribute("abc")); %>
		<form class="box" action="AfterLoginHomepage.jsp">
      <h2>Query Posted Successfully </h2>
      <input type="submit" value="Go Back to Homepage">
		</form> 
		<br><br><br>
</body>
</html>
