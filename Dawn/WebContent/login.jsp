<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"     %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Login.css">
<title>login</title>
</head>
<body>

<div class="wrapper">
	
	<s:form cssClass="container" action="login" theme="simple" >
		<h1 class="header">Login</h1>
		<s:textfield   label="Login-id" key="roll" placeholder="Roll Number">roll</s:textfield>
	<s:password  label="name" key="password" placeholder="Password">password</s:password>
	
	
	<s:submit cssClass="btn"></s:submit><br>
	<br>
	<a class="link" href="<s:url value="/Register.jsp"/>">register for the website</a>
	</s:form>
	
		
</div>
	
</body>
</html>