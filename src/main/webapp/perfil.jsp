<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Perfil Usuario</title>

    <link rel="stylesheet" href="css/estilos.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="./bootstrap-5.3.3/css/bootstrap.css">

</head>
<body class="fuente-general" style="background-color: #0075A8">

<%
    org.prueba_tecnica.perfil_usuario.modelos.Usuario usuario = (org.prueba_tecnica.perfil_usuario.modelos.Usuario) request.getAttribute("usuario");
    if (usuario != null) {
%>

<div class="container-fluid">
    <div class="row mt-5">
        <div class="sombra col-10 offset-1 col-sm-6 offset-sm-3 rounded-1 mt-5  bg-white ">
            <div class="text-center"><h3 class="mt-3"
                                         style="color: rgb(40,40,40)"><%= usuario.getNombres() %> <%= usuario.getApellidos() %>
            </h3></div>
            <hr>
            <div class="row">
                <div class="col-10 offset-1  rounded-1 p-5">
                    <div class="col-12 col-sm-10 offset-sm-1 text-center">
                        <span class="fuente-gris">Email: </span><%= usuario.getEmail() %>
                    </div>
                    <div class="col-12 col-sm-10 offset-sm-1 text-center mt-3">
                        <span class="fuente-gris">Número de telefono: </span><%= usuario.getNumeroTelefono() %>
                    </div>
                    <div class="col-12 col-sm-10 offset-sm-1 text-center mt-3">
                        <span class="fuente-gris">Ciudad: </span><%= usuario.getCiudad() %>
                    </div>
                    <div class="col-12 col-sm-10 offset-sm-1 text-center mt-3">
                        <span class="fuente-gris">País: </span><%= usuario.getPais() %>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>


<% } else { %>
<p>No se encontró información del usuario.</p>
<% } %>

<script src="./bootstrap-5.3.3/js/bootstrap.js"></script>
</body>
</html>
