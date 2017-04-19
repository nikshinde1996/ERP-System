<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
	padding-bottom: 50%;
}

nav ul {
	list-style-type: none;
	padding: 0;
}

nav ul li {
	padding: 0;
	padding-bottom: 5px;
}

nav ul a {
	text-decoration: none;
}

nav ul a:hover {
	color: green;
}

article {
	margin-left: 170px;
	padding: 1em;
	overflow: hidden;
}

table, tr, td {
	padding: 10px;
	border-collapse: collapse;
	border: 1px solid black;
}

td {
	padding-right: 70px;
	padding-left: 70px;
}

#savepay {
	padding: 10px;
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
				<li><a href="#">Personal Details</a></li>
				<li><a href="#">Projects</a></li>
				<li><a href="#">Gallery</a></li>
				<li><a href="welcomeUser.jsp">My Home</a></li>
			</ul>
		</nav>

		<article>
			<%
				if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
			%>
			You are not logged in<br /> <a href="index.jsp">Please Login</a>
			<%
				} else {
			%>
			Welcome User :
			<%=session.getAttribute("userid")%>
			<%
				}
			%>
			<%
				String basePay = "1200000";
				String rsu = "250000";
				String bonus = "400000";
				String housea = "25000";
				String fooda = "2500";
				String tax = "120000";

				double totalpay = 0;
				String userid = session.getAttribute("userid").toString();

				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trydb", "root", "nikhil20#");
				PreparedStatement ps = con
						.prepareStatement("select id,first_name,last_name,email from members where uname='" + userid + "'");
				ResultSet rs = ps.executeQuery();
				
				rs.next();
			%>

			<div>
				<h1>Personal Details</h1>
			</div>
			<div id="paytable">
				<table>
					<tr>
						<td><b>Employee Id</b></td>
						<td>TechD<%=rs.getInt(1)%></td>
					</tr>
					<tr>
						<td><b>Name</b></td>
						<td><%=rs.getString(2) + " " + rs.getString(3)%></td>
					</tr>
					<tr>
						<td><b>Email Id</b></td>
						<td><%=rs.getString(4)%></td>
					</tr>
					<tr>
						<td><b>Profile</b></td>
						<td>Software Engineer</td>
					</tr>
				</table>
			</div>
			<br>
			<div>
				<button id="savepay" onclick="">Edit</button>
			</div>
		</article>

		<footer>Copyright &copy; Alienage.io</footer>

	</div>
</body>
</html>
