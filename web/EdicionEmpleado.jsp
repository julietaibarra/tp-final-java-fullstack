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

	<div class="d-flex justify-content-center h-100">
		<div class="card text-white bg-dark">
			<div class="card-header">
				<h1>Edicion de datos</h1>
				<h3>Datos del empleado n°</h3>
                                <p><%= session.getAttribute("id")%></p>
				
			</div>
			<div class="card-body">
				<div class="text-center">
				<image src="img/usuario.png" alt="Responsive image" class="rounded" width="100" height="102">

				</div>
				<br>
                                <form action="ServletEdicionEmpleado" method="POST" >
                                  
                                    <P>Nombre:</P>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                            <input type="text" class="form-control" placeholder=" <%= session.getAttribute("nombre")%>" name="nombre" id="nombre" 
                                                       title="El nombre no puede ser vacio "value="<%= session.getAttribute("nombre")%>" required>

					</div>
                                        <p>Apellido:</p>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                            
                                            <input type="text" class="form-control" placeholder=" <%= session.getAttribute("apellido")%>" name="apellido" id="apellido"
                                                      
                                                       title="El apellido no puede ser vacio "value="<%= session.getAttribute("apellido")%>" required>

					</div>
                                            <p>DNI:</p>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                            
                                            <input type="text"  readonly=»readonly» class="form-control" placeholder=" <%= session.getAttribute("dni")%>" name="dni" id="dni "pattern="^[0-9]{8}$" title= "El dni debe tener 8 numeros" value="<%= session.getAttribute("dni")%>" required>

					</div>
                                          <P>Cargo:</P>
                                    <div class="input-group form-group">
                                        
						<div class="input-group-prepend">
                                                   
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                                                
						<input type="text" class="form-control" placeholder=" <%= session.getAttribute("cargo")%>" name="cargo" placeholder="cargo" id="cargo"  title="El cargo no puede ser vacio "value="<%= session.getAttribute("cargo")%>" required>

					</div>


	
					<div class="form-group">
						<input type="submit" value="Editar" class="btn btn-primary">
                                              <button class="btn btn-primary" type="submit" name="Cancelar" formaction="modificar.html">Cancelar</button>
					</div>
				</form>

			</div>
			
		</div>
	</div>
</div>
</body>
</html>
