<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>    
 
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

table, td, th{
   border-collapse:collapse;
   border: 1px solid black;
   padding: 5px;
   
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
    <li><a href='logout.jsp'>Log out</a></li>
    <li><a href="#">Mark</a></li>
    <li><a href="#">Provide Test</a></li>
    <li><a href="">Mail</a></li>
  </ul>
</nav>


<article>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<%
    String userid = request.getParameter("uname");
	
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trydb","root","nikhil20#");
    PreparedStatement ps = con.prepareStatement("select * from applicants");
	ResultSet rs = ps.executeQuery();
%>
	<table>
		<tr><th>Id</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Username</th><th>Password</th><th>Address</th><th>Profile</th><th>Experience</th><th>Skills</th><th>Country</th></tr>
		<%
		while(rs.next()){
		%>
		<tr><td><%= rs.getInt(1) %></td><td><%= rs.getString(2) %></td><td><%= rs.getString(3) %></td><td><%= rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%= rs.getString(6) %></td><td><%= rs.getString(7) %></td><td><%= rs.getString(8) %></td><td><%= rs.getString(9) %></td><td><%= rs.getString(10) %></td><td><%= rs.getString(11) %></td></tr>
		<% 	
		}
		%>
	</table>	
<%
}

%>
</article>

<footer>Copyright &copy; Alienage.io</footer>

</div>

</body>
</html>
