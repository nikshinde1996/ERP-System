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
		Login form
	</title>
	<style type="text/css">

		#loginform{
			border: 1px solid blue;
			padding : 5% 3% 3% 10% ;
			margin :  5% 30% 10% 30% ;
			float: center;
		}
		#inndiv{
			padding: 3%
		}
		.input{
			padding-right: 3% ;
		}
		#lgnb{
			padding: 3%;
			padding-right:28%; 
			padding-left:28%;
			background-color: #3396FF;
		}
	</style>
</head>
<body>
	<div id="loginform">
		<form action="welcome.jsp" >
			<div id="inndiv">
				<label>Email</label><br>
				<input type="email" name="email"><br>
			</div>
			<div id="inndiv">
				<label>Password</label><br>
				<input type="password" name="password"><br>
			</div>
			<div id="inndiv">
				<input id="lgnb" type="submit" name="login" value="Login">
			</div>
		</form>
	</div>
</body>
</html>