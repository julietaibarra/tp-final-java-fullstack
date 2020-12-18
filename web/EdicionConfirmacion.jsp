<%-- 
    Document   : Confirmacion
    Created on : 15/12/2020, 19:02:32
    Author     : Julieta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<br>
</head>
<body background="img/parque.png">


	<header>
		<nav class="navbar navbar-dark bg-dark  navbar-expand-sm justify-content-between" style="background-color: #e3f2fd;">

							<!--  <img src="img/rueda.png" width="125" height="90" class="d-inline-block align-top" alt="" loading="lazy"> -->
						 <ul class="navbar-nav">
								 <li class="nav-item">  <a class="nav-link active" href="index.html">Inicio</a> </li>
								
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Empleado</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="AltaEmpleados.jsp">Alta</a>
      <a class="dropdown-item" href="BajaEmplaados.jsp">Baja</a>
      <a class="dropdown-item" href="ModificacionEmpleado.jsp">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Datos</a>
    </div>
  </li>
							
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Juego</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Alta</a>
      <a class="dropdown-item" href="#">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Datos</a>
    </div>
  </li>

  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Horario</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Alta</a>
      <a class="dropdown-item" href="#">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Datos</a>
    </div>
  </li>
								
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Entradas</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Alta</a>
      <a class="dropdown-item" href="#">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Datos</a>
    </div>
  </li>


								 </ul>
			 </nav>
	</header>
	<br>
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
<div class="container">

	<div class="d-flex justify-content-center h-100">
		<div class="card text-white bg-dark">
                    <h1>Datos Editados </h1>
                    <h2>Se pudo editar las datos correctamente</h2>
   
		</div>
	</div>
</div>
</body>
</html>
