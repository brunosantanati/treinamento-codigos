<%@ page import="foo.*, bar.Pessoa" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contador</title>
</head>
<body>

<!-- coment�rio HTML -->
<!-- <p>meu par�grafo</p> -->

Contador:
<%-- coment�rio JSP --%>
<%--
<%
	out.println(Contador.getCount());
	out.println(Pessoa.getNome());
%>
 --%>
 
<%= Contador.getCount() %>

</body>
</html>