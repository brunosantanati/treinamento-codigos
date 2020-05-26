<%@ page import="java.util.*" %>
<html>

<body>

	<h1 align="center">Lista de Filmes</h1>
	
	<p>
	
	<%
		List<String> filmes = (List<String>) request.getAttribute("listaFilmes");
	
		Iterator<String> it = filmes.iterator();
		while(it.hasNext()) {
			out.print("<br>filme: " + it.next());
		}
	%>

</body>

</html>