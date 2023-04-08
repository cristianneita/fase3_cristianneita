<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="fase3_cristianneita.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
</head>
<body class="background fw-light">
    <div class="d-flex justify-content-center">
        <div class="mx-1 px-3 my-1 py-4">
            <form id="form1" runat="server" class="px-5 py-5 rounded text-white" style="background-color: rgba(0, 18, 51, 0.5);">
                <h1 class="text-center fw-light">Registrate</h1>
                <div class="row">
                    <div class="col-md-4">
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Id Persona</label>
                            <asp:TextBox ID="txtId" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Nombres</label>
                            <asp:TextBox ID="txtNombres" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-3 mt-3">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Apellidos</label>
                            <asp:TextBox ID="txtApellidos" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-geo-fill"></i>Nacionalidad</label>
                            <asp:TextBox ID="txtNacionalidad" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-arrow-through-heart"></i>Estado Civil</label>
                            <asp:TextBox ID="txtEstadoCivil" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-at"></i>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-123"></i>Edad</label>
                            <asp:TextBox ID="txtEdad" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-journal-text"></i>Programa de Formación</label>
                            <asp:TextBox ID="txtPrograma" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <label for="exampleInputEmail1" class="form-label"><i class="bi bi-lock"></i></i> Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control fw-light"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="mt-2">
                    <asp:Button ID="btnGuardar" runat="server" Text="Registrar" class="btn btn-outline-light w-100" />
                </div>
                <div class="mt-3 text-center">
                    <h6 class="fw-light">¿Ya estas registrado?</h6>
                    <a href="Login.aspx">Iniciar Sesión</a>
                    <asp:Label ID="lblRespuesta" runat="server" Text="Label"></asp:Label>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
