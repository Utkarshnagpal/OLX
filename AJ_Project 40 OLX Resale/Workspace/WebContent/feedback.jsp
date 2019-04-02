<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>
<style>
body{
margin: 50px;

background-image: url('images/Feedback3.jpg');
background-size: 750px 600px;
background-position:center;
background-repeat: no-repeat;

}


input[type = "submit"]
{
background-color: green;
color: white; 
}
</style>
</head>


<body>
<center>
<a href = "AfterLoginHomepage.jsp" class = "olx"><font color="red"; size = "150%";><b>O</b></font><font color="orange"; size = "150%";><b>L</b></font><font color="blue"; size = "150%";><b>X</b></font> </a></li>	&nbsp;&nbsp;&nbsp;&nbsp;
	
</center>
<center><h1>Feedback</h1>
<p>Please rate us here! Your feedback is valuable :)<br>

Rate us from 1 to 5 with 5 being most satisfactory and 1 being the least.</p></center> 

<form action = "feedbackServlet" method="post">
<p>1. How likely is it that you could recommend our product/website to a friend or colleague?</p>
<input type = "radio" value = "1" name = "ques1">1</input>
<input type = "radio" value = "2" name = "ques1">2</input>
<input type = "radio" value = "3" name = "ques1">3</input>
<input type = "radio" value = "4" name = "ques1">4</input>
<input type = "radio" value = "5" name = "ques1">5</input>
<p>2. How easy is our product/website to use?</p>
<input type = "radio" value = "1" name = "ques2">1</input>
<input type = "radio" value = "2" name = "ques2">2</input>
<input type = "radio" value = "3" name = "ques2">3</input>
<input type = "radio" value = "4" name = "ques2">4</input>
<input type = "radio" value = "5" name = "ques2">5</input>
<p>3. How was your first impression when you entered the website?</p>
<input type = "radio" value = "1" name = "ques3">1</input>
<input type = "radio" value = "2" name = "ques3">2</input>
<input type = "radio" value = "3" name = "ques3">3</input>
<input type = "radio" value = "4" name = "ques3">4</input>
<input type = "radio" value = "5" name = "ques3">5</input>
<p>4. How user-friendly is our website?</p>
<input type = "radio" value = "1" name = "ques4">1</input>
<input type = "radio" value = "2" name = "ques4">2</input>
<input type = "radio" value = "3" name = "ques4">3</input>
<input type = "radio" value = "4" name = "ques4">4</input>
<input type = "radio" value = "5" name = "ques4">5</input>
<p>5. How likely you are to return to this Web site?</p>
<input type = "radio" value = "1" name = "ques5">1</input>
<input type = "radio" value = "2" name = "ques5">2</input>
<input type = "radio" value = "3" name = "ques5">3</input>
<input type = "radio" value = "4" name = "ques5">4</input>
<input type = "radio" value = "5" name = "ques5">5</input>
<p>6. How often do you use our product/website?</p>
<input type = "radio" value = "1" name = "ques6">1</input>
<input type = "radio" value = "2" name = "ques6">2</input>
<input type = "radio" value = "3" name = "ques6">3</input>
<input type = "radio" value = "4" name = "ques6">4</input>
<input type = "radio" value = "5" name = "ques6">5</input>
<p>7. Overall, how would you rate our website?</p>
<input type = "radio" value = "1" name = "ques7">1</input>
<input type = "radio" value = "2" name = "ques7">2</input>
<input type = "radio" value = "3" name = "ques7">3</input>
<input type = "radio" value = "4" name = "ques7">4</input>
<input type = "radio" value = "5" name = "ques7">5</input>
<br><br><br>
<input type = "submit" value = "Submit">
</form>
</body>
</html>

