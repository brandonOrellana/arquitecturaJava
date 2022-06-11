package com.arquitecturajava.connectors.repositories.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.arquitectura.connectors.DataBaseHelper;

public class Libro {
	private String isbn;
	private String titulo;
	private String categoria;
	public String getIsbn() {
	return isbn;
	}
	public void setIsbn(String isbn) {
	this.isbn = isbn;
	}
	public String getTitulo() {
	return titulo;
	}
	public void setTitulo(String titulo) {
	this.titulo = titulo;
	}
	public String getCategoria() {
	return categoria;
	}
	public void setCategoria(String categoria) {
	this.categoria = categoria;
	}
	
	public Libro() {
		super();
	}
	
	public Libro(String isbn,String titulo,String categoria) {
		super();
		this.isbn=isbn;
		this.titulo=titulo;
		this.categoria=categoria;
	}
	
	
	public static List<String> buscarTodasLasCategorias() {
		String consultaSQL = "select distinct(categoria) as categoria from Libros";
		DataBaseHelper<String> helper = new DataBaseHelper<String>();
		List<String>listaDeCategorias = helper.seleccionarRegistros(consultaSQL,
		String.class);
		return listaDeCategorias;
		}
	
	public void insertar() throws ClassNotFoundException,SQLException{
		String consultaSQL = "insert into Libros (isbn,titulo,categoria) values";
		consultaSQL += "('" + this.isbn + "','" + this.titulo + "','" + this.categoria + "')";
		DataBaseHelper<Libro> helper = new DataBaseHelper<Libro>();
		helper.modificarRegistro(consultaSQL);
	}
	
	public static List<Libro> buscarTodos(){
		String consultaSQL = "select isbn,titulo,categoria from Libros";
		DataBaseHelper<Libro> helper = new DataBaseHelper<Libro>();
		List<Libro> listaDeLibros = helper.seleccionarRegistros(consultaSQL,Libro.class);
		return listaDeLibros;
	}
	
	public void borrar() throws ClassNotFoundException,SQLException{
		String consultaSQL = "delete from Libros where isbn='"+ this.isbn+"'";
		DataBaseHelper<Libro> helper = new DataBaseHelper<Libro>();
		helper.modificarRegistro(consultaSQL);
	}
	public static Libro buscarPorClave(String isbn) {
		String consultaSQL = "select isbn,titulo,categoria from Libros where isbn='"+ isbn+"'";
		DataBaseHelper<Libro> helper=new DataBaseHelper<Libro>();
		List<Libro> listaDeLibros=helper.seleccionarRegistros(consultaSQL, Libro.class);
		return listaDeLibros.get(0);
	}
	public void salvar()throws ClassNotFoundException,SQLException{
		String consultaSQL="update Libros set titulo='"+ this.titulo+"',categoria='"+ categoria+"' where isbn='"+ isbn+"'";
		DataBaseHelper<Libro> helper=new DataBaseHelper<Libro>();
		helper.modificarRegistro(consultaSQL);
	}
	public static List<Libro> buscarPorCategoria(String categoria){
		String consultaSQL = "select isbn,titulo,categoria from Libros where categoria='"+ categoria+"'";
		DataBaseHelper<Libro> helper = new DataBaseHelper<Libro>();
		List<Libro> listaDeLibros = helper.seleccionarRegistros(consultaSQL,Libro.class);
		return listaDeLibros;
	}
}
