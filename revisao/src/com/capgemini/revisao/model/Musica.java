package com.capgemini.revisao.model;

public class Musica {
	
	private String nome;
	private String compositor;
	private int duracaoEmSegundos;
	
	public Musica() {
	}
	
	public Musica(String nome, String compositor, int duracaoEmSegundos) {
		this.nome = nome;
		this.compositor = compositor;
		this.duracaoEmSegundos = duracaoEmSegundos;
	}
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCompositor() {
		return compositor;
	}
	public void setCompositor(String compositor) {
		this.compositor = compositor;
	}
	public int getDuracaoEmSegundos() {
		return duracaoEmSegundos;
	}
	public void setDuracaoEmSegundos(int duracaoEmSegundos) {
		this.duracaoEmSegundos = duracaoEmSegundos;
	}

}
