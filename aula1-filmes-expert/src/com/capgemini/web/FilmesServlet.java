package com.capgemini.web;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capgemini.model.FilmesExpert;

public class FilmesServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String categoria = request.getParameter("categoria");
		
		FilmesExpert filmesExpert = new FilmesExpert();
		
		List<String> filmes = filmesExpert.getFilmes(categoria);
		
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//		out.print("Lista de filmes:");
//		Iterator<String> it = filmes.iterator();
//		while(it.hasNext()) {
//			out.print("<br>filme: " + it.next());
//		}
		
		request.setAttribute("listaFilmes", filmes);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("lista-de-filmes.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
