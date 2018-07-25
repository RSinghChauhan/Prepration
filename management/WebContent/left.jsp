<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >
<% if(session.getAttribute("name")==null )
	{%>
<form action="login.jsp" method="post"><br>
<table bgcolor="#d0ecfd" width="100%">

<tr>
<td>Email id</td>
<td align="justify"><br><input type="text" name="uname"><br><br></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td></td>
<td><br><input type="submit" name="submit" value="submit"></td>
</tr>
<tr>
<td><br><a href="registration.jsp"><font color="gray">Sign Up</font></a></td>
<td><br><a href=""><font color="gray">Forget Password</font></a></td>
</tr>
</table>
</form>
<%}else
{
	out.print(session.getAttribute("name")+", You are already logged in!");
} %>
</body>
</html>
