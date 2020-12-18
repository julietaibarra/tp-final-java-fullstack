<%-- 
    Document   : AltaEmpleado
    Created on : 15/12/2020, 11:34:20
    Author     : Julieta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Baja Empleado</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
				 <h1> Datos de Empleados</h1>
                                 <h2>Baja de empleado</h2>
			</div>
			<div class="card-body">
				<div class="text-center">
				  <p>Ingrese el DNI del empleado a eliminar de la base de datos.</p>
            <form action="ServletBajaEmpleado" method="post">
              <div class="form-group row">
                <label for=""class="col-sm-2 col-md-2 col-lg-2 col-form-label">DNI</label>
                <div class="col-sm-10 col-md-10 col-lg-10">
                    <input type="text" name="dni" id="dni" placeholder="dni" pattern="^[0-9]{8}$" title= "El dni debe tener 8 numeros" value="" required>
                </div>
              </div>
                <input class="btn btn-primary" type="submit" name="submit" value="Eliminar">
            </form>

			</div>
			
		</div>
	</div>
</div>
</body>
</html>
