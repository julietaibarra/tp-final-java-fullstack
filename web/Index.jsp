<%-- 
    Document   : Index
    Created on : 15/12/2020, 09:33:32
    Author     : Julieta
--%>

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
    
    if(usuario ==null){
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
				<h1>Bienvenido al Parque de diversiones Alegria</h1>
				
		
			</div>
			<div class="card-header">
				<h2>Nuestros juegos mas populares</h2>

				<h3>La montania Rusa</h3>
				<p>Lorem ipsum, dolor sit amet consectetur, adipisicing elit. Excepturi voluptatibus, reprehenderit rem adipisci totam ducimus incidunt suscipit ipsam, soluta veritatis quas, non sequi saepe quidem. Soluta nemo at aliquid, ipsam.</p>

				<h3>La calesita</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi inventore dolorem accusantium assumenda pariatur esse deserunt accusamus, deleniti. Molestias harum totam nulla a asperiores vero ipsa corrupti cum, consectetur eligendi!</p>
				<img src="img/parque-atracciones.jpg" class="img-fluid" alt="Responsive image">

			</div>
			
		</div>
	</div>
</div>
        <% }
%>
</body>
</html>

