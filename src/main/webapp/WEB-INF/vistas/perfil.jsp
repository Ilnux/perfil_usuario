<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Perfil de Usuario</title>
</head>
<body>
<h1>Perfil de Usuario</h1>
<%
    org.prueba_tecnica.perfil_usuario.modelos.Usuario usuario = (org.prueba_tecnica.perfil_usuario.modelos.Usuario) request.getAttribute("usuario");
    if (usuario != null) {
%>
<p>Nombre: <%= usuario.getNombres() %></p>
<p>Apellidos: <%= usuario.getApellidos() %></p>
<p>Email: <%= usuario.getEmail() %></p>
<p>Número de Teléfono: <%= usuario.getNumeroTelefono() %></p>
<p>Ciudad: <%= usuario.getCiudad() %></p>
<p>País: <%= usuario.getPais() %></p>
<% } else { %>
<p>No se encontró información del usuario.</p>
<% } %>
</body>
</html>
