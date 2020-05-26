import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class PrimeiraServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		java.util.Date hoje = new java.util.Date();
		out.println("<html>" + "<body>" + "<h1 align=center>Primeira Servlet</h1>" + "<br>" + hoje + "</body>" + "</html>" );
		
	}

}