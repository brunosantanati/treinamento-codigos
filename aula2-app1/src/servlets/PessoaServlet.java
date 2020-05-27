package servlets;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cachorro;
import model.Pessoa;

public class PessoaServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Pessoa pessoa = new Pessoa();
		pessoa.setNome("Bruce Wayne");
		pessoa.setIdade(35);
		
		Cachorro cachorro = new Cachorro();
		cachorro.setRaca("pastor alemao");
		cachorro.setNome("Rex");
		
		pessoa.setCachorro(cachorro);
		
		List<Cachorro> cachorros = new ArrayList<>();
		
		Cachorro cachorro1 = new Cachorro();
		cachorro1.setRaca("pastor alemao");
		cachorro1.setNome("Bernardo");
		
		Cachorro cachorro2 = new Cachorro();
		cachorro2.setRaca("pinscher");
		cachorro2.setNome("Luna");
		
		Cachorro cachorro3 = new Cachorro();
		cachorro3.setRaca("labrador");
		cachorro3.setNome("Toto");
		
		cachorros.add(cachorro1);
		cachorros.add(cachorro2);
		cachorros.add(cachorro3);
		
		request.setAttribute("minhaPessoa", pessoa);
		request.setAttribute("cachorros", cachorros);
		
		//RequestDispatcher rd = request.getRequestDispatcher("pessoa.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("pessoa-el.jsp");
		rd.forward(request, response);
		
	}
	
}
