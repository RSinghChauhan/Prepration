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
response.setContentType("text/html");
		String name= request.getParameter("uname");
		String email=request.getParameter("emailid");
		String password=request.getParameter("pass");
		String dob=request.getParameter("dob");
		String contactno=request.getParameter("pno");
		String address=request.getParameter("add");
	
		String country=request.getParameter("count1");
		String state=request.getParameter("count");
		String gender=request.getParameter("gender");
		
			try{
				int x=0;
				Class.forName("com.mysql.jdbc.Driver");
					Connection com= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
					Statement s=com.createStatement();
					s.execute("insert into registration(fullname,emailid, password, dob, Contactno,Address,Country,State,Gender,type) values ('"+name+"','"+email+"','"+password+"','"+dob+"','"+contactno+"','"+address+"','"+country+"','"+state+"','"+gender+"','user')");
					x++;
					if(x>0)
					{
						out.println("<script type='text/javascript'>");
						out.println("alert('you  registration are ready ')");
						out.println("</script>");
					}
					
					
			com.close();
			}
			catch(Exception e){
				System.out.println(e);
			}
			
	

%>
<% response.sendRedirect("index.jsp");%>
</body>
</html>