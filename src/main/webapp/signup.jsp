<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet" type="text/css" href="css/signup.css">
<title>Sign up</title>
</head>
<body>


<% 
	String err = (String)session.getAttribute("error");
	System.out.println(err);
	
%>
	<div class="container">
	    <div class="left">
	      <h1>Register</h1>
	      <form name="signup-form" action="" onsubmit= "validateFormSignUp();"  method="post">
	        
	        <div><input type="text" name="username" class="input-box" placeholder="Input your email" ></div>
	        <div><input type="password" name="password" class="input-box" placeholder="Input your password" ></div>
	        <div><input type="password" name="repassword" class="input-box" placeholder="Reinput your password" ></div>
	        <div><input class="submit-button" type="submit" value="Register Now"></div>
	      </form>
	    </div>
	    <div class="right">
	      <div class="content">
	        <h1><%= session.getAttribute("isNew")==null?"Welcome back!":"Error:" %></h1>
	        <p><%= session.getAttribute("isNew")==null?"To keep connected with us <br>please input with your personal info":err %></p>
	        <% session.removeAttribute("isNew"); %>   <!-- the isNew is release, press F5 or open new tab, Welcome text will appear -->
	      </div>
	    </div>
	</div>
<script src="js/signup.js"></script>  
  
</body>
<footer>
	
</footer>
</html>