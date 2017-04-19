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
    <li><a href="EmpPersonalDetails.jsp">Personal Details</a></li>
    <li><a href="#">Projects</a></li>
    <li><a href="#">Gallery</a></li>
    <li><a href="viewPayslip.jsp">Pay slip</a></li>
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
Welcome User : <%=session.getAttribute("userid")%>
<%
    }
%>
</article>

<footer>Copyright &copy; Alienage.io</footer>

</div>

</body>
</html>
