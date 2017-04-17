<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ERP Login page</title>
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
			margin :  2% 30% 2% 30% ;
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
			padding-right:8%; 
			padding-left:8%;
			background-color: #3396FF;
		}
		#supb{
			padding: 3%;
			padding-left: 8%;
			padding-right: 8%;
			background-color: #83FF33;
		}
	</style>
</head>
<body>
	<div id="loginform">
		
			<div id="inndiv">
				<a href="login.jsp" ><input id="lgnb" type="submit" name="login" value="Login" onclick="login.jsp"></a>
				<a href="signup.jsp" ><input id="supb" type="submit" name="signup" value="SignUp" onclick="signup.jsp"></a>	
			</div>
		
	</div>
</body>
</html>
