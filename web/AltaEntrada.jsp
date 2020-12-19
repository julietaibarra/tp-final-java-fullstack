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
	<div class="d-flex  justify-content-center h-100">
		<div class="card text-white bg-dark">

						<div class="card-header">
				<h1>Compra de entradas</h1>
				<h3>Ingrese los datos</h3>
				
			</div>
			<div class="card-body">
					<div class="text-center">
				<image src="img/ticket.png" alt="Responsive image" class="rounded" width="170" height="168">

				</div>
				<br>
				<form>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" class="form-control" placeholder="Nombre">

					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="input-group-text" class="form-control" placeholder="Apellido">
					</div>
					
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
							<select name="juego" id="">
								<option selected="true" disabled="disabled">seleccione un juego</option>
							  <option value="volvo">Calecita</option>
							  <option value="saab">Montania Rusa</option>
							  <option value="mercedes">La vuelta al mundo</option>
							  <option value="audi">Tobogan de agua</option>
							</select>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
							<select name="juego" id="">
								<option selected="true" disabled="disabled">seleccione un Horario</option>
							  <option value="volvo">13 a 17</option>
							  <option value="saab">17 a 20 </option>
							  <option value="mercedes">20 a 23</option>
							  
							</select>
					</div>

					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="date" name="fecha_nac" value="" id="fecha_nac"value="2018-07-22">
					</div>
					<div class="form-group">
						<input type="submit" value="Comprar" class="btn btn-light">
					</div>
				</form>
			</div>



		
		</div>
	</div>
</div>
</body>
</html>
