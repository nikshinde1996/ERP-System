package com.recruitment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewApplicants")
public class ViewApplicants extends HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
            throws ServletException, IOException {  
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  
   
		out.println("<h1>Applicants List</h1>");  
       
		List<Applicant> list=ApplicantsDBConnection.getAllApplicants();  
       
		out.print("<table border='1' width='100%'");  
		out.print("<tr><th>Id</th><th>Name</th><th>Email</th><th>Profile</th><th>Address</th><th>Phone no.</th><th>Country</th></tr>");  
		for(Applicant a:list){  
			out.print("<tr><td>"+a.getId()+"</td><td>"+a.getName()+"</td><td>"+a.getEmail()+"</td><td>"+a.getProfile()+"</td><td>"+a.getAddress()+"</td><td>"+a.getMob()+"</td><td>"+a.getCountry()+"</td></tr>");  
		}  
		out.print("</table>");  
       
		out.close();  
    }  
	
}
