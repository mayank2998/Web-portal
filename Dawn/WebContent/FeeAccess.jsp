<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page import="com.mayank.FeeDatabase" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link  rel="stylesheet" type="text/css" href="FeeAccess.css">
<%
   FeeDatabase theClassInstance = new FeeDatabase();
   String status=theClassInstance.getFeedetails();
%>
</head>
<body>

<div class="topnav">
  
  <a href="<s:url value="/welcome.jsp"/>">Home</a>
  <a href="<s:url value="/feedetails.jsp"/>">SubmitFee</a>
  <a href="<s:url value="/FeeAccess.jsp"/>">FeeStatus</a>
  <a class="Sign-up" href="#"><s:property value="roll"/></a>
</div>

<table>
	<tr>
		<th>Semester</th>
		<th>required amount</th>
		<th>amount paid</th>
		<th>remaining amount</th>
		<th>status</th>
	</tr>
	<tr>
		<td>first</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>second</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>third</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>fourth</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>fifth</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>sixth</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>seventh</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	<tr>
		<td>eighth</td>
		<td>189500</td>
		<td><s:property value="amt_paid"/></td>
		<td><s:property value="req_amt"/></td>
		<td><%=status%></td>
	</tr>	
	

</table>

</body>
</html>