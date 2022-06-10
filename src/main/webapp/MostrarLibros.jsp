<%@page import="java.util.List"%>
<%@page import="com.arquitecturajava.connectors.repositories.jdbc.Libro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jakarta.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="com.mysql.cj.jdbc.DatabaseMetaData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="com.arquitectura.connectors.DataBaseHelper"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Libros</title>
</head>
<body>
<form name="filtroCategoria">
	<select name="categoria">
	<option value="seleccionar">seleccionar</option>
	<% 
		List<String> listaDeCategorias=null;
		listaDeCategorias=Libro.buscarTodasLasCategorias();
		for(String categoria:listaDeCategorias) { %>
			<option value="<%=categoria%>">
				<%=categoria%>
			</option></br>
		<% } %>
	</select>
	<input type="submit" value="filtrar">
</form>
	

</br>
<%
	List<Libro> listaDelibros = null; // revisar
	if(request.getParameter("categoria")==null || request.getParameter("categoria").equals("seleccionar")){
		listaDelibros = Libro.buscarTodos();
	}else{
		listaDelibros = Libro.buscarPorCategoria(request.getParameter("categoria"));
	}
	for(Libro libro:listaDelibros){%>
		<%=libro.getIsbn()%>
		<%=libro.getTitulo()%>
		<%=libro.getCategoria()%>
		<a href="BorrarLibro.jsp?isbn=<%=libro.getIsbn()%>">Borrar</a>
		<a href="FormularioEditarLibro.jsp?isbn=<%=libro.getIsbn()%>">Editar</a>
		</br>
	<%}
%>
<a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
</body></html>

