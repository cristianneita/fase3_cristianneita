<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="fase3_cristianneita.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Iniciar Sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
</head>
<body class="fw-light background vh-100">
    <div class="d-flex justify-content-center">
        <div class="mx-4 px-3 my-4 py-5">
            <form class="px-5 py-5 rounded text-white" style="background-color: rgba(0, 18, 51, 0.5);" runat="server">
                <h1 class="text-center fw-light">Iniciar Sesión</h1>
                <div class="mb-3 mt-3">
                    <label for="exampleInputEmail1" class="form-label"><i class="bi bi-at"></i> Correo Electronico</label>
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control fw-light"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label"><i class="bi bi-lock"></i> Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control fw-light"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <asp:Button ID="btnGuardar" runat="server" Text="Iniciar Sesión" class="btn btn-outline-light w-100" />
                </div>
                <div class="mb-3 text-center">
                    <h6 class="fw-light">¿Aún no te has registrado?<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </h6>
                    <a href="WebForm3.aspx">Registrate aquí</a>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
