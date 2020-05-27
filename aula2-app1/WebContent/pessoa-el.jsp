<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pessoa</title>
</head>
<body>

Dados pessoa:
${minhaPessoa.nome}
${minhaPessoa["nome"]}
${minhaPessoa.idade}

Dados cachorro:
${minhaPessoa.cachorro.nome}
${minhaPessoa.cachorro.raca}

Terceiro cachorro:
${cachorros[2].nome}

Primeiro cachorro:
${cachorros[0].nome}
${cachorros[0].raca}

<table>
	<c:forEach var="dog" items="${cachorros}">
		<tr>
			<td>${dog.nome}</td>
			<td>${dog.raca}</td>
			<td>
				<c:choose>
					
					<c:when test="${dog.raca == 'pinscher'}">
						Parece bravo mas não faz nada
					</c:when>
					
					<c:when test="${dog.raca == 'pastor alemao'}">
						Cachorro bravo
					</c:when>
					
					<c:when test="${dog.raca == 'labrador'}">
						Cachorro muito inteligente
					</c:when>
					
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>