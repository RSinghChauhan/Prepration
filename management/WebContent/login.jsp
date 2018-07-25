<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
</head>
<body>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection com= DriverManager.getConnection("jdbc:mysql://localhost:3306/photo","root", "admin");
Statement s=com.createStatement();


response.setContentType("text/html");

String email= request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		
		try {
		
		PreparedStatement ps=com.prepareStatement("select * from registration where emailid=? and password=?");
				ps.setString(1, email);
				ps.setString(2, pass);
				ResultSet rs =ps.executeQuery();
				
				if(rs.next()){
					String name=rs.getString(2);
					String type=rs.getString(11);
					session.setAttribute("name", name);
					session.setAttribute("userId", rs.getInt(1)+"");
					if(type.equals("admin")) {
					response.sendRedirect("admin.jsp");
					}
					else {
						response.sendRedirect("index.jsp");
					}
				}
					else{
						out.println("<script>");
						out.println("alert('Email and password is not valid!')");
						out.println("</script>"); 
						//response.sendRedirect("index.jsp");
					}
		}
				
				catch (Exception ex){
				
				System.out.println(ex);
				
				}
		%>
		
</body>
</html>