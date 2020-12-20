<%-- 
    Document   : AltaEmpleado
    Created on : 15/12/2020, 11:34:20
    Author     : Julieta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Alta Empleado</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="js/Validacion.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<br>
    <script type="text/javascript">
                                                  function controlHorario() {
                                                  var hrInicio= document.getElementsByName("horaInicio").value;
                                                  var hrFinal= document.getElementsByName("horaFinal").value;
                                                  if (hrInicio> hrFinal) {
                                                        alert("ERROR!! horario de inicio no puede ser mas tarde que el de finalizacion");
                                                }
                                             }
          
                                    </script>
<br>

</head>

<body background="img/parque.png">

  <%
    HttpSession miSession= request.getSession();
    String usuario= (String) miSession.getAttribute("nombreUsuario");

    
    if(usuario==null){
        response.sendRedirect("SinUsuario.jsp");
    }else{
        %>
	<header>
		<nav class="navbar navbar-dark bg-dark  navbar-expand-sm justify-content-between" style="background-color: #e3f2fd;">

							<!--  <img src="img/rueda.png" width="125" height="90" class="d-inline-block align-top" alt="" loading="lazy"> loading="lazy"> -->
						 <ul class="navbar-nav">
                                          
				<li class="nav-item dropdown">  <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                        <%= session.getAttribute("nombreUsuario")%></a> 
                                         <div class="dropdown-menu">
      <a class="dropdown-item" href="DatosPersonales.jsp">Datos Personales</a>
       <!--<a class="dropdown-item" href="EditarDatosPersonales.jsp">Editar Usuario</a>-->
     

      <div class="dropdown-divider"></div>
       <form name="salir" action="ServletCerrarSession" method="POST">
         <input type="submit" value="Salir" class="btn btn-primary">
      </form>
      </div>
                                </li>
		 					
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
    Empleado</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="AltaEmpleado.jsp">Alta</a>
      <a class="dropdown-item" href="BajaEmpleado.jsp">Baja</a>
      <a class="dropdown-item" href="ModificacionEmpleado.jsp">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="MostrarEmpleados.jsp">Lista de empleados</a>
    </div>
  </li>
							
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Juego</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="AltaJuego.jsp">Alta</a>
      <a class="dropdown-item" href="BajaJuego.jsp">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="MostrarJuego">Lista de Juegos</a>
    </div>
  </li>

  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Horario</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="AltaHorario.jsp">Alta</a>
      <a class="dropdown-item" href="BajaHorario.jsp">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="MostrarHorarios.jsp">Lista de Horarios</a>
    </div>
  </li>
								
  <li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Entradas</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="AltaEntrada.jsp">Compra</a>
      <a class="dropdown-item" href="#">Total vendidadas</a>
      <a class="dropdown-item" href="#">Vendiadas por juego</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Vendidas en un dia</a>
    </div>
  </li>


								 </ul>
			 </nav>
	</header>	<br>
	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="styles.css">
<div class="container">

	<div class="d-flex justify-content-center h-100">
		<div class="card text-white bg-dark">
			<div class="card-header">
				<h1>Alta  de los horarios al sistema</h1>
				<h3>Ingrese el nuevo horario</h3>
				
			</div>
			<div class="card-body">
				<div class="text-center">
				<image src="img/horario.png" alt="Responsive image" class="rounded" width="150" height="152">

				</div>
				<br>
                                <form action="ServletAltaHorario" method="POST" >
                                     <P>Hora inicio:</P>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                            <input type="time" name="horaInicio" value="10:00"  id="horaInicio">

					</div>
                                      <P>Hora final:</P>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                            <input type="time" name="horaFinal" value="11:00" id="horaFinal">
                                          

					</div>
                                       <P>Día:</P>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                           <select name="dia" id=""  title="El  dia no puede ser vacio" required>
							<!--<option disabled selected value>>Seleccione un día</option>-->
                                                           <option value="jueves">Jueves</option>
							  <option value="viernes">Viernes</option>
							  <option value="sabado">Sábado</option>
							  <option value="domingo">Domingo</option>
							  
						</select>
					</div>
                                 
					<div class="form-group">
						<input type="submit" value="Login" onclick="controlHorario()" class="btn btn-primary">
					</div>
				</form>
			</div>
			<div class="card-footer">
			
			</div>
		</div>
	</div>
</div>
</body>
</html>
