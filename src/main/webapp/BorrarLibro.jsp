<%@page import="com.arquitecturajava.connectors.repositories.jdbc.Libro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
	String isbn=request.getParameter("isbn");
	Libro libro= new Libro();
	libro.setIsbn(isbn);
	libro.borrar();
	response.sendRedirect("MostrarLibros.jsp");
%>
