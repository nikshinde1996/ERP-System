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
    padding-bottom:20%;
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
			padding-right:34%; 
			padding-left:34%;
			background-color: #3396FF;
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
    <li><a href="#">Apply</a></li>
    <li><a href="#">Projects</a></li>
    <li><a href="#">Gallery</a></li>
    <li><a href="reg.jsp">Register Here</a></li>
  </ul>
</nav>

<article>

<div id="loginform">
		<form method="post" action="login.jsp" >
			<div id="inndiv">
				<label>Username</label><br>
				<input type="text" name="uname" value="" autofocus><br>
			</div>
			<div id="inndiv">
				<label>Password</label><br>
				<input type="password" name="pass" value=""><br>
			</div>
			<div id="inndiv">
				<input id="lgnb" type="submit" name="login" value="Login">
			</div>
		</form>
	</div>



<!--          <form method="post" action="login.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>-->
</article>

<footer>Copyright &copy; Alienage.io</footer>

</div>

</body>
</html>
