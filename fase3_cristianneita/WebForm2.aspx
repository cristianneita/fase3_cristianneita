<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="fase3_cristianneita.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous"/>
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css"/>
</head>
<body class="fw-light background vh-100">
    <div class="d-flex justify-content-center">
        <div class="mx-1 px-3 my-1 py-4">
            <form id="form1" runat="server" class="px-5 py-5 rounded text-white" style="background-color: rgba(0, 18, 51, 0.5);">
                <div class="row">
                    <div class="col-md-6">
                        <h1 class="fw-light text-white">Bienvenido</h1>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex justify-content-end mt-2">
                            <asp:Button ID="btnSalir" runat="server" Text="Salir" class="btn btn-danger "/>
                        </div>
                        
                    </div>
                </div>
               
                <p class="mt-3">Por favor ingresa el ID del usuario que deseas eliminar</p>
                <div class="row">
                    <div class="col-md-12">
                        <label for="exampleInputEmail1" class="form-label"><i class="bi bi-person-add"></i>Id Cliente</label>
                        <asp:TextBox ID="txtId" runat="server" class="form-control fw-light"></asp:TextBox>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" class="btn btn-outline-light w-100" />
                    </div>
                </div>
                <!-- resultado de busqueda-->
                <asp:Label ID="lblRespuesta" runat="server" Text="Resultado de Busqueda" class="form-label fs-3 mt-5" Visible="false"></asp:Label>
                <!-- 2x2-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblNumId" runat="server" Text="ID" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtNumId" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblNombres" runat="server" Text="Nombres" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtNombres" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <!-- 2x2-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblApellidos" runat="server" Text="Apellidos" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtApellidos" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtNacionalidad" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <!-- 2x2-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblEstado" runat="server" Text="Estado Civil" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtEstado" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblEmail" runat="server" Text="Email" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <!-- 2x2-->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblEdad" runat="server" Text="Edad" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtEdad" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="mb-3 mt-2">
                            <asp:Label ID="lblPrograma" runat="server" Text="Programa" class="form-label" Visible="false"></asp:Label>
                            <asp:TextBox ID="txtPrograma" runat="server" class="form-control fw-light" ReadOnly="true" Visible="false"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12">
                        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger w-100" Visible="false"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
