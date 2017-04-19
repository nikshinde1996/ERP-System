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
		out.print("<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Country</th><th>Edit</th><th>Delete</th></tr>");  
		for(Applicant e:list){  
			out.print("<tr><td>"+e.getId()+"</td><td>"+e.getName()+"</td><td>"+e.getEmail()+"</td><td>"+e.getProfile()+"</td><td>"+e.getAddress()+"</td><td>"+e.getMob()+"</td><td>"+e.getCountry()+"</td><td><a href='EditServlet?id="+e.getId()+"'>edit</a></td><td><a href='DeleteServlet?id="+e.getId()+"'>delete</a></td></tr>");  
		}  
		out.print("</table>");  
       
		out.close();  
    }  
	
}
