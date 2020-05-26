package com.capgemini.model;

import java.util.ArrayList;
import java.util.List;

public class FilmesExpert {
	
	public List<String> getFilmes(String categoria){
		
		List<String> filmes = new ArrayList<String>();
		
		if(categoria.equals("terror")) {
			filmes.add("Sexta-feira treze");
			filmes.add("A Coisa");
			filmes.add("O Chamado");
		}else if(categoria.equals("acao")) {
			filmes.add("Duro de matar");
			filmes.add("John Wick 1");
			filmes.add("John Wick 3");
		}else if(categoria.equals("comedia")) {
			filmes.add("Esposa de mentirinha");
			filmes.add("Se beber n�o case");
			filmes.add("As branquelas");
		}else {
			filmes.add("Fora de rumo");
			filmes.add("Drag�o vermelho");
			filmes.add("Sil�ncio dos inocentes");
		}
		
		return filmes;
		
	}

}
