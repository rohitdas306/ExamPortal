<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>help page</title>
</head>
<body>
<h1>this is help ${roll}</h1>
<%
// String name=(String)request.getAttribute("name");
%>
<%-- <h1><%=name %></h1> --%>
<h1>
${name}</h1>
<hr>

<c:forEach var="item" items="${marks}">
<h1>${item}</h1>
</c:forEach>


</body>
</html>