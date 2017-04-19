<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String profile = request.getParameter("profile");
    String yoe = request.getParameter("yoe");
    String skills = request.getParameter("skills");
    String country = request.getParameter("country");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trydb","root","nikhil20#");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into applicants(first_name, last_name, email, uname, pass, address,profile,yoe,skills,country) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','" + address+ "','" + profile+ "','" + yoe+ "','" + skills+ "','" + country + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("appliedSuccess.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>