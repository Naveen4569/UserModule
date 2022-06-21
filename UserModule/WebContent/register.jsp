<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

body{
background-color:LightGray;
}
.parent{
justify-content:center;
display:flex;
}
.p1{
background-color:yellow;
color:red;
}
</style>
<script>


function fun1(){

	let n=/^[a-zA-Z ]{2,25}$/;
	var name=document.getElementById("Name");
	
	if(!(name.value.match(n)==null))
	{
		document.getElementById("a1").style.color="green";	
	
	}
	else
	{
		document.getElementById("a1").style.color="red";	
		name.focus();
	}	
	
	

    
}
function fun2(){
	
	let un=/^[a-zA-Z\_\@0-9]{3,10}$/;
	var uname=document.getElementById("Name1");

	if(!(uname.value.match(un)==null))
	{
		document.getElementById("a2").style.color="green";	
		
	}
	else
	{
		document.getElementById("a2").style.color="red";	
		uname.focus();
	}	
	
	
    
}

function fun3(){
	
	var pass=document.getElementById("Password");
	if((pass.value.length<=10 && pass.value.length>0)){
		document.getElementById("a3").style.color="green";	
		
	
	}
	else
	{
		document.getElementById("a3").style.color="red";	
		pass.focus();
	}	
	
	
}
function fun4(){
	var cpass=document.getElementById("Password");
	var pass=document.getElementById("ConfirmPassword");
	if(pass.value!=cpass.value)
	{
		document.getElementById("a6").style.color="red";
		pass.focus();
	
	}
	else
	{
		document.getElementById("a6").style.color="green";	
		
	}

}
function fun5(){
	
	let em=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var email=document.getElementById("Email");
	if(!((email.value.match(em))==null))
	{
		document.getElementById("a4").style.color="green";
		
		}
	else
	{
		document.getElementById("a4").style.color="red";	
		email.focus();
	}	
	

}
function fun6(){
	
	var country=document.getElementById("Country");
	let coun=/^[a-zA-Z ]{2,20}$/;
	
	if(country.value.match(coun)!=null)
	{
		document.getElementById("a5").style.color="green";
		
		}
	else
	{
		document.getElementById("a5").style.color="red";	
		country.focus();
	}	
	
	}
function fun(){
	  let x = document.forms["xyz"]["Name"].value;
	  let y = document.forms["xyz"]["Name1"].value;
	  let a = document.forms["xyz"]["Email"].value;
	  let b = document.forms["xyz"]["Country"].value;
	  let c = document.forms["xyz"]["Password"].value;
	  let cp = document.forms["xyz"]["ConfirmPassword"].value;
	  
	  let n=/^[a-zA-Z ]{2,25}$/;
	  let un=/^[a-zA-Z\_\@0-9]{3,10}$/;
	  let em=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	  let coun=/^[a-zA-Z ]{2,20}$/;
	 
	  if ((x.match(n)==null) || (y.match(un)==null) || (a.match(em)==null) || (b.match(coun)==null) || cp!=c || !(c.length<=10 && c.length>0) ) {
	    alert("Check entered details");
	    
	    
	  }
	  
	  else{
		  document.getElementById("xyz").submit();
	  }

}
function returnToPreviousPage(){
	window.history.back();
}

</script>
	


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class=parent>
<div style="text-align:center;" class=child>
<form action="Register" method="post" id="xyz" >
<table>
<tr>
<th>
</th>
<th>
</th>

</tr>
<tr>
<td class="p1">Name
</td>
<td><input type="text" id="Name" name="f1" onkeydown="fun1()">
</td>
</tr>

<tr>
<td class="p1">UserName
</td>
<td><input type="text" id="Name1" name="f2" onkeydown="fun2()">
</td>
</tr>

<tr>
<td class="p1">Password 
</td>
<td><input type="password" id="Password" name="f3" onkeydown="fun3()">
</td>
</tr>

<tr>
<td class="p1">ConfirmPassword
</td>
<td><input type="password" id="ConfirmPassword" onkeyup="fun4()">
</td>
</tr>

<tr>
<td class="p1">Email
</td>
<td><input type="text" id="Email" name="f4" onkeydown="fun5()">
</td>
</tr>


<tr>
<td class="p1">Country
</td>
<td><input type="text" id="Country" name="f5" onkeydown="fun6()">
</td>
</tr>

<tr>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td><input type="button" name="submit_form" value="submit" onclick="fun();"/>
</td>
<td><input type="reset">
</td>
</tr>
</table>
<br>


</form>
<div style="text-align:left;">
<h4 id="a1" style="color:red;">Name can be lower or upper case letters only(NotNull)</h4>
<h4 id="a2" style="color:red;">UserName can be lower or upper case letters or _ or @ (NotNull)</h4>
<h4 id="a3" style="color:red;">password length should greater than 0 and less than or =10 </h4>
<h4 id="a6" style="color:red;">password not matches</h4>
<h4 id="a4" style="color:red;">Enter valid Email<br></h4>
<h4 id="a5" style="color:red;">Enter valid country name</h4>

</div>
</div>
</div>
<%

response.setHeader("Cache-Control","no-cache, no-store");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>

</body>
</html>