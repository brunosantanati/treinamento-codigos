<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contador2</title>
</head>
<body>

<%!
	public String getNome(){
		return "Bartolomeu";	
	}
%>

<%! static int count = 0; %>

Contador:
<%= ++count %>
Nome:
<%= getNome() %>

</body>
</html>