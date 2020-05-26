package com.capgemini;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DadosServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		String dado1 = Integer.toString((int) ((Math.random() * 6) + 1));
		String dado2 = Integer.toString((int) ((Math.random() * 6) + 1));
		
		out.println("<html>" + "<body>" + "<h1 align=center>Dados Servlet</h1>" + "<br>" + dado1 + " e " + dado2 + "</body>" + "</html>" );
		
	}

}
