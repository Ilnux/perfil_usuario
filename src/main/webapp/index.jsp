<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro Usuario</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<h1>Registro usuario</h1>

<hr>
<form action="crear-usuario" method="post">
    <p><label>Nombres</label> <input type="text" name="nombres"></p>
    <p><label>Apellidos</label> <input type="text" name="apellidos"></p>
    <p><label>Email</label> <input type="text" name="email"></p>
    <p><label>Número de teléfono</label> <input type="text" name="numero_telefono"></p>
    <p><label>Ciudad</label> <input type="text" name="ciudad"></p>
    <p><label>País</label> <input type="text" name="pais"></p>
    <button type="submit">Enviar</button>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>