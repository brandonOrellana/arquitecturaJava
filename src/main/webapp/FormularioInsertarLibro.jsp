<html>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
<head>
<link rel="stylesheet" type="text/css" href="css/formato.css" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/validacion.js" ></script>

<title>Formulario Libro</title>
</head>
<body>
<div class="container">
	<form id="formularioInsercion" action="InsertarLibro.jsp" onsubmit="return validacion();">
	<h1>Formulario alta Libro</h1>
	<fieldset>
	
		<legend>Formulario alta libro</legend>
		
		<div class="row g-3 align-items-center">
			<div class="col-auto">
				<label for="isbn" class="col-form-label">ISBN:</label>
			</div>
			<div class="col-auto">
				<input class="form-control" id="isbn" type="text" name="isbn">
			</div>
		</div>
		</br>
		<div class="row g-3 align-items-center">
			<div class="col-auto">
			<label for="titulo" class="form-label">Titulo:</label>
			</div>
			<div class="col-auto">
			<input class="form-control" id="titulo" type="text" name="titulo">
			</div>
		</div>	
		</br>
		<div class="row g-3 align-items-center">
			<div class="col-auto">
			<label for="categoria" class="form-label">Categoria :</label>
			</div>
			<div class="col-auto">
			<input class="form-control" id="categoria" type="text" name="categoria">
			</div>
		</div>
		
		<input type="submit" class="btn btn-primary" value="Insertar"/>
	</fieldset>
	</form>
</div>
</body>
</html>