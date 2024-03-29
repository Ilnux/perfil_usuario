<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registro Usuario</title>

    <link rel="stylesheet" href="css/estilos.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
    <link href="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.min.css
" rel="stylesheet">

    <link rel="stylesheet" href="./bootstrap-5.3.3/css/bootstrap.css">

</head>
<body class="fuente-general" style="background-color: #0075A8">

<div class="container-fluid">
    <div class="row">
        <div class="sombra col-10 offset-1 col-sm-6 offset-sm-3 rounded-1 mt-3 mb-3 bg-white ">
            <div class="text-center"><h1 class="mt-3" style="color: rgb(40,40,40)">Registro de usuario</h1></div>
            <hr>
            <form id="formularioGuardar" action="crear-usuario" method="post">
                <div class="row">
                    <div class="col-10 offset-1 shadow-sm rounded-1 p-2 pb-3">
                        <div class="col-12 col-sm-10 offset-sm-1 1">
                            <div class="form-group">
                                <label for="nombres" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>Nombres</label>
                                <input name="nombres" type="text" class="form-control fw-bold" id="nombres"
                                       placeholder="nombres" required>
                            </div>
                        </div>
                        <div class="col-12 col-sm-10 offset-sm-1 mt-3">
                            <div class="form-group">
                                <label for="apellidos" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>Apellidos</label>
                                <input name="apellidos" type="text" class="form-control fw-bold" id="apellidos"
                                       placeholder="apellidos" required>
                            </div>
                        </div>
                        <div class="col-12 col-sm-10 offset-sm-1 mt-3">
                            <div class="form-group">
                                <label for="email" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>Email</label>
                                <input name="email" type="email" class="form-control fw-bold" id="email"
                                       placeholder="correo electónico" required
                                       pattern="[a-zA-Z0-9_\-]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,5}"
                                       title="Por favor, introduce una dirección de correo electrónico válida. Debe seguir el formato usuario@dominio.com"
                                >
                            </div>
                        </div>
                        <div class="col-12 col-sm-10 offset-sm-1 mt-3">
                            <div class="form-group">
                                <label for="numero_telefono" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>Número de telefono</label>
                                <input name="numero_telefono" type="text" class="form-control fw-bold"
                                       id="numero_telefono"
                                       placeholder="#"
                                       required>
                            </div>
                        </div>
                        <div class="col-12 col-sm-10 offset-sm-1 mt-3">
                            <div class="form-group">
                                <label for="ciudad" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>Ciudad</label>
                                <input name="ciudad" type="text" class="form-control fw-bold" id="ciudad"
                                       placeholder="ciudad" required>
                            </div>
                        </div>
                        <div class="col-12 col-sm-10 offset-sm-1 mt-3">
                            <div class="form-group">
                                <label for="pais" class="fw-bold fuente-gris">
                                    <span class="text-danger">*</span>País</label>
                                <input name="pais" type="text" class="form-control fw-bold" id="pais"
                                       placeholder="país" required>
                            </div>
                        </div>

                        <div class="col-8 offset-2 col-sm-10 offset-sm-1 mt-5">
                            <button id="btnGuardar" class=" boton-azul" type="submit">Guardar usuario</button>
                        </div>


                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<script>
    document.getElementById('formularioGuardar').addEventListener('submit', function (event) {
        if (this.checkValidity() === true) {
            Swal.fire({
                title: "Guardando usuario",
                timerProgressBar: true,
                didOpen: () => {
                    Swal.showLoading();
                }
            })
            this.submit()
        } else {
            Swal.fire({
                icon: "error",
                title: "Oops...",
                text: "Verificar los campos por favor"
            });
        }
        event.preventDefault();
    });
</script>


<script src="./bootstrap-5.3.3/js/bootstrap.js"></script>
<script src="
https://cdn.jsdelivr.net/npm/sweetalert2@11.10.5/dist/sweetalert2.all.min.js
"></script>
</body>
</html>