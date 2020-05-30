<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teste JSTL</title>
</head>
<body>

	<!-- https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm -->
	
	<c:forEach var="musica" items="${listaMusicas}">
		${musica.nome} <br/>
		${musica.compositor} <br/>
		${musica.duracaoEmSegundos} <br/>
		
		<%-- <c:if test="${musica.duracaoEmSegundos >= 150}">
			Música longa
		</c:if>
		<c:if test="${musica.duracaoEmSegundos < 150}">
			Músicas curta
		</c:if> --%>
		
		<c:choose>
	
			<c:when test="${musica.duracaoEmSegundos ge 150}">
				Música longa
			</c:when>
	
			<c:otherwise>
				Música curta
			</c:otherwise>
	
		</c:choose>
		
		<br/>
		
		<c:if test="${fn:startsWith(musica.compositor, 'Black')}">
			Heavy Metal
		</c:if>
		
		<br/>
		
		<c:set var = "nomeMusica" value = "${fn:toUpperCase(musica.nome)}" />
		Nome em maiúsculo : ${nomeMusica}
		
		<br/><br/>	
	
	</c:forEach>

</body>
</html>