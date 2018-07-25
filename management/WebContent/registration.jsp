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
<%@ include file="menu.jsp" %>
</div>
<div id ="cen">

<div id="left2">



<form action="regis.jsp">

<table border="0" align="center" height="540" width="370">
<tr>
<th align="center" colspan="2" height="10"><h2><u><label>Registration Form</label></u></h2></th></tr>

<tr>
<td><label class="lab">Full Name:</label></td>
<td><input type="text" class="size" id="un" name="uname" placeholder="Full Name"  required></td>
</tr>

<tr>
<td><label class="lab">Email Id:</label></td>
<td><input type="text" onblur="email()" id="mytext" class="size" name="emailid" placeholder="Email Id"  required></td>
</tr>

<tr>
<td><label class="lab">Create Password:</label></td>
<td><input type="password" class="size" name="pass" placeholder="Create Password" required ></td>
</tr>

<tr>
<td><label class="lab">Confirm Password:</label></td>
<td><input type="password" class="size" onblur="pass()" name="pw" placeholder="Confirm Password"  required></td>
</tr>

<tr>
<td><label class="lab">DOB:</label></td>
<td><input type="date" class="size" name="dob" placeholder="DD/MM/YYYY"  required></td>
</tr>

<tr>
<td><label class="lab">Contact No:</label></td>
<td><input type="text" class="number-only" name="pno" placeholder="Contact No" maxlength="15"  required></td>
</tr>

<tr>
<td><label class="lab">Address:</label></td>
<td><textarea class="size" name="add"  required></textarea></td>
</tr>

<tr>
<td><label class="lab">Country:</label></td>
<td><select name="count1">
                    <option value>India</option>
                    <option value>Pakistan</option>
                    <option value>America</option>                    
                    <option value>Nepal</option>
                    
                                    
</select>
</td>
</tr>

<tr>
<td><label class="lab">State:</label></td>
<td><select name="count">
                    
                    <option value>MP</option>
                    <option value>UP</option>
                    <option value>GJ</option>
                    
                    
                                    </select> 

</td>
</tr>

<tr>
<td><label class="lab">Gender:</label></td>
<td>
<input type="radio" class="size" name="gender" value="male" checked>Male
<br>
<input type="radio" class="size" name="gender" value="female">Female
</td>
</tr>

<tr><td></td>
<td><input type="submit" name="submit" value="submit" >

</tr>

</table>

</form>



</div>
</div>



<div id= "footer">
<%@ include file="footer.jsp" %>
</div>
</center>

</body>
</html>