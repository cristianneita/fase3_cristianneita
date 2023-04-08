<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="fase3_cristianneita.Registro" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registrate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
</head>
<body class="fw-light background">
    <div class="d-flex justify-content-center">
        <div class="mx-1 px-3 my-1 py-4">
            <form class="px-5 py-5 rounded text-white" style="background-color: rgba(0, 18, 51, 0.5);">
                <h1 class="text-center fw-light">Registrate</h1>
                <p class="fw-light mt-2">
                    Por favor ingresar los siguientes datos. Recuerda que todos son obligatorios
                </p>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Nombres</label>
                            <input type="text" class="form-control fw-light" name="nombre" placeholder="Ingrese su/s nombres" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Apellidos</label>
                            <input type="text" class="form-control fw-light" name="apellidos" placeholder="Ingrese su/s apellidos" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-geo-fill"></i>Nacionalidad</label>
                            <input type="text" class="form-control fw-light" name="nacionalidad" placeholder="Ingrese su nacionalidad" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-arrow-through-heart"></i>Estado Civil</label>
                            <input type="text" class="form-control fw-light" name="estadoCivil" placeholder="Ingrese su estado civil" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-at"></i>Email</label>
                            <input type="email" class="form-control fw-light" name="email" placeholder="Ingrese su correo electronico " required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-123"></i>Edad</label>
                            <input type="text" class="form-control fw-light" name="edad" placeholder="Ingrese su edad" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-journal-text"></i>Programa de Formación</label>
                            <input type="text" class="form-control fw-light" name="programa" placeholder="Ingrese su programa de formación" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-lock"></i></i> Contraseña</label>
                            <input type="password" class="form-control fw-light" name="pass" placeholder="Ingrese su contraseña" required>
                        </div>
                    </div>
                </div>
                <div class="mt-2">
                </div>
                <div class="mt-3 text-center">
                    <h6 class="fw-light">¿Ya estas registrado?</h6>
                    <a href="#">Iniciar Sesión</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>


