<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<script>
function fun(){
	alert("Registration Sucessful");
	window.location.href = "index.jsp"
}
function fun2(){
	alert("UserName already used\nChoose another one");
	window.location.href = "register.jsp"
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control","no-cache, no-store");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

%>
<%


HttpSession s=request.getSession();
String ob="false";
ob=(String)s.getAttribute("s");
if(ob=="true")
{	
%>
<script> fun()</script>
<% 
}
else
{

%>
<script> fun2()</script>

<%} %>


</body>
</html>