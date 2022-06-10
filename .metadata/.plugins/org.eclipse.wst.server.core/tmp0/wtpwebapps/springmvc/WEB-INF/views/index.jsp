<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
<h1>testing</h1>
	<%
	String name=(String)request.getAttribute("name");
	Integer id=(Integer)request.getAttribute("id");
	List<String> friends= (List<String>) request.getAttribute("f");
	%>
	
	<h1><%=name%></h1>
	<h1><%=id%></h1>
	<h1><%
	
	for(String s:friends)
	{
		out.println(s);
	}
	
	%></h1>
</body>
</html>