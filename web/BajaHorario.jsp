<%-- 
    Document   : AltaEmpleado
    Created on : 15/12/2020, 11:34:20
    Author     : Julieta
--%>

<%@page import="java.util.List"%>
<%@page import="Logica.Horario"%>
<%@page import="Logica.Controladora"%>
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

 <%
    HttpSession miSession= request.getSession();
    String usuario= (String) miSession.getAttribute("nombreUsuario");

    
    if(usuario==null){
        response.sendRedirect("SinUsuario.jsp");
    }else{
        %>
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
				<h1>Baja de  horario del sistema</h1>
				<h3>Elija el horario a eliminar</h3>
				
			</div>
			<div class="card-body">
				<div class="text-center">
				<!--<image src="img/usuario.png" alt="Responsive image" class="rounded" width="100" height="102">-->

				</div>
				<br>
                                <form action="ServletBajaHorario" method="POST" >
                                    	<select name="horario" id="">
                                             <%
                miSession= request.getSession();
		Controladora control = (Controladora)miSession.getAttribute("control");

                List<Horario> horarios=control.traerHorarios();
                   for (Horario horario: horarios) {
                       
                %>
                                                                <option value="<%=horario.getId_horario()%>" name="horario" ><%=horario.getId_horario()%> <%=horario.getHora_inicio()%> <%=horario.getHora_fin()%> <%=horario.getDia()%> </option>

                                                              <% } %>
							</select>
                                    	
					<div class="form-group">
						<input type="submit" value="Eliminar" class="btn btn-primary">
                                                <button class="btn btn-primary" type="submit" name="Cancelar" formaction="Index.jsp">Cancelar</button>
					</div>
				</form>
			</div>
			<div class="card-footer">
			
			</div>
		</div>
	</div>
</div>
  <% } %>
</body>
</html>
