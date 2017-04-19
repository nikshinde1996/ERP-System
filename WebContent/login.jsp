<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");
	
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trydb","root","nikhil20#");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        if(userid.equals("Admin")){
        	response.sendRedirect("welcomeAdmin.jsp");
        }else{
        	response.sendRedirect("welcomeUser.jsp");
        }
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>