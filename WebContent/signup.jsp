<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
 -->
 
<!DOCTYPE html>
<html>
<head>
	<title>
		Sign Up form
	</title>
	<style type="text/css">

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
			padding-left: 25%;
			padding-right: 25%;
			background-color: #83FF33;
		}
	</style>
</head>
<body>
	<div id="loginform">
		<form action="SaveServlet" method="post">
			<div id="inndiv">
				<label>Name</label><br>
				<input type="text" name="name"><br>
			</div>
			<div id="inndiv">
				<label>Email</label><br>
				<input type="email" name="email"><br>
			</div>
			<div id="inndiv">
				<label>Password</label><br>
				<input type="password" name="password"><br>
			</div>
			<div id="inndiv">	
				<label>Country</label><br>
				<select name="country" style="width:150px">  
    				<option>&nbsp India</option>  
    				<option>&nbsp USA</option>  
    				<option>&nbsp UK</option>  
    				<option>&nbsp Other</option>
    			</select>
			</div>
			<div id="inndiv">
  				<input id="supb" type="submit" name="signup" value="SignUp">
			</div>
		</form>
	</div>
</body>
</html>