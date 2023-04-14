<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm4.aspx.vb" Inherits="fase3_cristianneita.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Listado de Usuarios</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous" />
    <link rel="stylesheet" href="Styles.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css" />
</head>
<body class="fw-light background vh-100">
    <div class="d-flex justify-content-center">
        <div class="mx-1 px-3 my-1 py-4">
            <form id="form1" runat="server" class="px-5 py-5 rounded text-white" style="background-color: rgba(0, 18, 51, 0.5);">
                <div class="row">
                    <div class="col-md-8">
                        <h3 class="fw-light text-white">Listado de usuarios registrados</h3>

                    </div>
                    <div class="col-md-4">
                        <div class="d-flex justify-content-end mt-2">
                            <asp:Button ID="btnVolver" runat="server" Text="Volver" class="btn btn-danger" />
                        </div>
                    </div>
                </div>

                <div class="mt-3">
                    <asp:GridView ID="GridView1" runat="server" class="py-4 x-4 text-center table table-hover fw-light text-white">
                    </asp:GridView>
                </div>

            </form>
        </div>
    </div>
</body>
</html>
