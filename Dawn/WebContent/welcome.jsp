<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link  rel="stylesheet" type="text/css" href="welcome.css">
<title>welcome</title>
</head>
<body>
<div class="topnav">
  
  <a href="<s:url value="/welcome.jsp"/>">Home</a>
  <a href="<s:url value="/feedetails.jsp"/>">SubmitFee</a>
  <a href="<s:url value="/FeeAccess.jsp"/>">FeeStatus</a>
 	<s:form action="Log-off" theme="simple">
 		<button Class="Sign-up" type="submit" formaction="Log-off">Log-off</button>
 	</s:form>
  <a class="Sign-up" href="#"><s:property value="roll"/></a>
  
</div>
<!-- creating cards*/  -->
<div class="row">
  <div class="column">
    <div class="card">
      <img class="image" src="fee1.jpg">
      <a href="<s:url value="/feedetails.jsp"/>">SubmitFee</a>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img class="image" src="feeaccess.jpg">
      <a href="<s:url value="/FeeAccess.jsp"/>">FeeStatus</a>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img class="image" src="news.jpg">
      <a href="<s:url value="http://www.news.google.com"/>">News</a>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img class="image" src="youtube.jpg">
      <a href="<s:url value="http://www.youtube.com"/>">YouTube</a>
    </div>
  </div>
</div>
<!-- end of cards -->




</body>
</html>