<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
}

header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 160px;
    margin: 0;
    padding: 1em;
    border: 1px solid gray;
    padding-bottom:37%;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
nav ul li {
    padding: 0;
    padding-bottom:5px;
}  
nav ul a {
    text-decoration: none;
}
nav ul a:hover{
	color:green;
}
article {
    margin-left: 170px;
    padding: 1em;
    overflow: hidden;
}
#loginform{
	border: 1px solid blue;
	padding : 5% 3% 3% 10% ;
	margin :  2% 30% 2% 30% ;
	float: center;
}
#inndiv{
	padding: 3%
}
.input{
	padding-right: 3% ;
}
#supb{
	padding: 3%;
	padding-left: 10%;
	padding-right: 10%;
	background-color: #83FF33;
}
#reset{
	padding: 3%;
	padding-left: 10%;
	padding-right: 10%;
	background-color: #FFDA33;
}
</style>
</head>
<body>

<div class="container">

<header>
   <h1>Alienage.io</h1>
</header>
  
<nav>
  <ul>
  	<li><a href="index.jsp">Home</a></li>
    <li><a href="loginUser.jsp">Admin Login</a></li>
    <li><a href="loginUser.jsp">Employee Login</a></li>
    <li><a href="applreg.jsp">Apply</a></li>
    <li><a href="#">Projects</a></li>
    <li><a href="#">Gallery</a></li>
  </ul>
</nav>

<article>
	<div id="loginform">
		<form  method="post" action="registration.jsp" >
			<div id="inndiv">
				<label>First Name</label><br>
				<input type="text" name="fname" value="" /><br>
			</div>
			<div id="inndiv">
				<label>Last Name</label><br>
				<input type="text" name="lname" value="" /><br>
			</div>
			<div id="inndiv">
				<label>Email</label><br>
				<input type="text" name="email" value="" />
			</div>
			<div id="inndiv">
				<label>User Name</label><br>
				<input type="text" name="uname" value="" /><br>
			</div>
			<div id="inndiv">
				<label>Password</label><br>
				<input type="password" name="pass" value="" /><br>
			</div>
			<div id="inndiv">	
				<label>Country</label><br>
				<select name="country" style="width:150px">  
    				<option> India</option>  
    				<option> USA</option>  
    				<option> UK</option>  
    				<option> Other</option>
    			</select>
			</div>
			<div id="inndiv">
  				<input id="supb" type="submit" name="signup" value="SignUp">
  				<input id="reset" type="reset" value="Reset" />
			</div>
		</form>
	</div>
</article>

<footer>Copyright &copy; Alienage.io</footer>

</div>

</body>
</html>
