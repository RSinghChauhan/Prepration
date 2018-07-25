package Registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Regis extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name= request.getParameter("NM");
		String email=request.getParameter("EN");
		String password=request.getParameter("PA");
		String dob=request.getParameter("CP");
		String contactno=request.getParameter("count");
		String address=request.getParameter("co");
		//String address=request.getParameter("co");
		String country=request.getParameter("co");
		String state=request.getParameter("co");
		String gender=request.getParameter("co");
		
			try{
				Class.forName("com.mysql.jdbc.Driver");
					Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/","root", "admin");
					PreparedStatement ps=con.prepareStatement("Insert into rams VALUES(?,?,?,?,?)");
					ps.setString(1, name);
					ps.setString(2, email);
					ps.setString(3, password);
					ps.setString(4, dob);
					ps.setString(5, contactno);
					ps.setString(6, address);
					ps.setString(7, country);
					ps.setString(8, state);
					ps.setString(9, gender);
					int i=ps.executeUpdate();
					if(i>0){
						pw.print("Your data inserted successfully");
					}
					else{
						pw.print("Wrong codes");
					}
		}
			catch(Exception e){
				System.out.println(e);
			}
			
	
	}

}
