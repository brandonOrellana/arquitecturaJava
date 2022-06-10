<%@page import="com.arquitecturajava.connectors.repositories.jdbc.Libro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String isbn= request.getParameter("isbn");
	String titulo= request.getParameter("titulo");
	String categoria= request.getParameter("categoria");
	Libro libro= new Libro(isbn,titulo,categoria);
	libro.salvar();
	response.sendRedirect("MostrarLibros.jsp");
%>