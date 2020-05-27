<%@ page import="model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pessoa</title>
</head>
<body>

<%
	Pessoa p = (Pessoa) request.getAttribute("minhaPessoa");
	Cachorro c = p.getCachorro();
%>

<%= p.getNome() %>
<%= p.getIdade() %>
<%= c.getNome() %>
<%= c.getRaca() %>

<jsp:useBean id="minhaPessoa" class="model.Pessoa" scope="request" />
<jsp:getProperty name="minhaPessoa" property="nome" />
<jsp:getProperty name="minhaPessoa" property="idade" />
<jsp:getProperty name="minhaPessoa" property="cachorro" />

</body>
</html>