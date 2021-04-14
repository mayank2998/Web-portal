<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeeDetails</title>
</head>
<body>

	<s:form action="getFeeDetails">
		<s:textfield label="Roll" key="roll"></s:textfield>
		<s:textfield label="Semester" key="semester"></s:textfield>
		<s:textfield label="amount_paid" key="amt_paid"></s:textfield>
		<s:submit key="status"></s:submit> 
	
	</s:form>

</body>
</html>