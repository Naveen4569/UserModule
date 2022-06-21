<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >

<h1 style="text-align:center;color:red;">UserModule</h1>
<div style="margin-bottom:30px;" >

<form action="Servlet1" method="post">
<table align="center" >
<tr>
<th>
</th>
<th>
</th>

</tr>
<tr>

<td>

UserName:</td><td><input type="text" name="u1">
</td>
</tr>
<tr>
<td>

Password:</td><td><input type="password" name="p1">
</td>
</tr>
<tr>
<td align="center"></td>
<td><input type="submit" value="Login">
</td>
</tr>
</table>
</form>

</div>
<div style="text-align:center;">
<h3>---OR---</h3>
<br>
<h1><a href="register.jsp">Register </a></h1>
</div>
</body>
</html>