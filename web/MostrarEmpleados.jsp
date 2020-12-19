<%-- 
    Document   : Index
    Created on : 15/12/2020, 09:33:32
    Author     : Julieta
--%>

<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Usuario"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
	<title>Home Page</title>
	<!-- <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.js"></script>
 -->

  <!-- Required meta tags -->
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
      <a class="dropdown-item" href="#">Datos Personales</a>
      <a class="dropdown-item" href="#">Editar Usuario</a>
     

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
      <a class="dropdown-item" href="#">Alta</a>
      <a class="dropdown-item" href="#">Baja</a>
      <a class="dropdown-item" href="#">Modificacion</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Lista de Juegos</a>
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
      <a class="dropdown-item" href="#">Compra</a>
      <a class="dropdown-item" href="#">Total vendidadas</a>
      <a class="dropdown-item" href="#">Vendiadas por juego</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Vendidas en un dia</a>
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
				<div class="card-header">
				<h1>Datos de los empleados</h1>
				
		
			</div>
			<div class="card-body">
                            <table class="table table-hover table-dark" name="tabla">
  <thead>
    <tr>
    <th  scope="col">ID</th>
    <th scope="col">DNI</th>
    <th scope="col">Apellido</th>
    <th scope="col">Nombre</th>
    <th scope="col">Cargo</th>
    <th scope="col">Nombre de usuario</th>

  </tr>
  </thead>
      <tbody>
                    <tr>
                        <%
                miSession= request.getSession();
		Controladora control = (Controladora)miSession.getAttribute("control");

                List<Empleado> empleados=control.traerEmpleados();
                   for (Empleado empleado: empleados) {
                       
                %>
                      <td><%=empleado.getId_empleado()%></td>
                      <td><%=empleado.getDni()%></td>
                      <td><%=empleado.getApellido()%></td>
                       <td><%=empleado.getNombre()%></td>
                       <td><%=empleado.getCargo()%></td>
                       <td><%=empleado.getUnUsuario().getNombre_usuario()%></td>
                      
                    </tr>
                                       
                      <% } %>
                  </tbody>
                </table>
				
			</div>
			
		</div>
	</div>
</div>
   <% } %>                
 
</body>
</html>

