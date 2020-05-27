<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado</title>
</head>
<body>

<jsp:useBean id="pessoa" class="model.Pessoa">
	<jsp:setProperty name="pessoa" property="*" />
</jsp:useBean>

<jsp:getProperty name="pessoa" property="nome" />
<jsp:getProperty name="pessoa" property="idade" />

</body>
</html>