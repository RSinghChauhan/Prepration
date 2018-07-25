<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping</title>
<link rel="stylesheet" type="text/css" href="CSS/Style.css">
</head>
<body background="./upload/background.jpg">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<center>
<div id="container" >
<div id="top" align="left">

	<%@ include file="top.jsp" %>
	
</div>
<div id="menu">
<%@ include file="logmenu.jsp" %>
</div>
<div id ="cen">
<div id ="left">


<form action="admincon.jsp" method="post">
<table width="100%" >


&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
<tr><th><p> change the menu </p></th></tr>
<tr>
<td><input type="text" name="content1"></td>
</tr>
<tr>
<td><input type="text" name="content2"></td>
</tr>
<tr>
<td><input type="text" name="content3"></td>
</tr>
<tr>
<td><input type="text" name="content4"></td>
</tr>
<tr>
<td><input type="text" name="content5"></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="change menu"></td>
</tr>
<tr>

</table>
</form>


		</div>



<div id="left2">
<form action="">
<table>
<tr><th><p> change the menu </p></th></tr>
<tr>
<td><input type="text" name="leftlogo"></td>
</tr>
<tr>
<td><input type="text" name="rightlogo"></td>
</tr></table></form>


</div>
<form>
<table>

<tr><td>
upload the left logo
</td>
<td><input type="file" name=""></td>
</tr>

<tr>
<td>right logo</td>
<td><input type="file" name=""></td>
</tr>
<tr>
<td><input type="submit" name="submit" value="change menu"></td>
</tr>
</table>



</form>









</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div></div>
</center>

</body>
</html>