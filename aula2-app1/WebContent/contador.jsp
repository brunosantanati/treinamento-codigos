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

<!-- comentário HTML -->
<!-- <p>meu parágrafo</p> -->

Contador:
<%-- comentário JSP --%>
<%--
<%
	out.println(Contador.getCount());
	out.println(Pessoa.getNome());
%>
 --%>
 
<%= Contador.getCount() %>

</body>
</html>