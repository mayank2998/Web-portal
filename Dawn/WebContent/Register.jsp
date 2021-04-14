<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Registrationdesign.css">
<title>Register</title>
</head>
<body>

<div class="wrapper">

	<s:form cssClass="container" action="register" theme="simple">
		<s:textfield cssClass="fields" label="Fullname" key="fullname">Full Name</s:textfield>
		<s:textfield cssClass="fields" label="LOGIN_ID" key="roll">Roll</s:textfield><br>
		<s:password cssClass="fields" label="password" key="password">Password</s:password><br>
		<s:submit cssClass="button"></s:submit>
	</s:form>	
</div>
</body>
</html>