<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body background="./upload/background.jpg">
<%


Class.forName("com.mysql.jdbc.Driver");
Connection coms= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement s1=coms.createStatement();


response.setContentType("text/html");
String content1= request.getParameter("content1");
String content2= request.getParameter("content2");
String content3= request.getParameter("content3");
String content4= request.getParameter("content4");
String content5= request.getParameter("content5");

if(content1!=""){
	
	s1.executeUpdate("update menu set contant1='"+content1+"' where id='1'");
		
}

if(content2!=""){
	
	s1.executeUpdate("update menu set contant2='"+content2+"' where id='1'");
		
}

if(content3!=""){
	
	s1.executeUpdate("update menu set contant3='"+content3+"' where id='1'");
		
}

if(content4!=""){
	
	s1.executeUpdate("update menu set contant4='"+content4+"' where id='1'");
		
}

if(content5!=""){
	
	s1.executeUpdate("update menu set contant5='"+content5+"' where id='1'");
		
}

%>
<%response.sendRedirect("index.jsp"); %>>
</body>
</html>