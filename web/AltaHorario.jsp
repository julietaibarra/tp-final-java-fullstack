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


	<header>
		<nav class="navbar navbar-dark bg-dark  navbar-expand-sm justify-content-between" style="background-color: #e3f2fd;">

							<!--  <img src="img/rueda.png" width="125" height="90" class="d-inline-block align-top" alt="" loading="lazy"> -->
							 <ul class="navbar-nav">
								 <li class="nav-item">  <a class="nav-link active" href="Index.jsp">Inicio</a> </li>
								 <li class="nav-item">  <a class="nav-link" href="Login.jsp">Login</a> </li>
                                                                 <li class="nav-item">  <a class="nav-link" href="AltaEmpleado.jsp">Alta</a> </li>
								 <li class="nav-item">  <a class="nav-link"  href="BuyTicket.jsp">Comprar entradas</a> </li>
							
						
                                                        </ul>
			 </nav>
	</header>
	<br>
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
				<!--<image src="img/usuario.png" alt="Responsive image" class="rounded" width="100" height="102">-->

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
                                           <select name="dia" id=""  title="El  dia no puede ser vacio "value="" required>
							<option selected="true" disabled="disabled">Seleccione un día</option>
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
