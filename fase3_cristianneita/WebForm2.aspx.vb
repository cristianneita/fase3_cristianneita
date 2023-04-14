Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports DAL
Public Class WebForm2
    Inherits System.Web.UI.Page
    Dim BuscarPersona As New DAL.DALPersona
    Dim EliminarPersona As New DAL.DALPersona
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim id As Integer = Integer.Parse(txtId.Text)
        Dim persona As DataRow = CType(BuscarPersona.BuscarPersona(id), DataRow)
        If persona IsNot Nothing Then
            lblRespuesta.Text = "Busqueda Encontrada"
            lblRespuesta.Visible = True
            lblNumId.Visible = True
            lblNombres.Visible = True
            lblApellidos.Visible = True
            lblNacionalidad.Visible = True
            lblEstado.Visible = True
            lblEmail.Visible = True
            lblEdad.Visible = True
            lblPrograma.Visible = True
            txtNumId.Visible = True
            txtNombres.Visible = True
            txtApellidos.Visible = True
            txtNacionalidad.Visible = True
            txtEstado.Visible = True
            txtEmail.Visible = True
            txtEdad.Visible = True
            txtPrograma.Visible = True
            btnEliminar.Visible = True

            txtNumId.Text = persona("id").ToString()
            txtNombres.Text = persona("nombres").ToString()
            txtApellidos.Text = persona("apellidos").ToString()
            txtNacionalidad.Text = persona("nacionalidad").ToString()
            txtEstado.Text = persona("estadoCivil").ToString()
            txtEmail.Text = persona("email").ToString()
            txtEdad.Text = persona("edad").ToString()
            txtPrograma.Text = persona("programa").ToString()
        Else
            lblRespuesta.Visible = True
            lblRespuesta.Text = $"No se encontro datos relacionados con el ID {txtId.Text}"
            lblNumId.Visible = False
            lblNombres.Visible = False
            lblApellidos.Visible = False
            lblNacionalidad.Visible = False
            lblEstado.Visible = False
            lblEmail.Visible = False
            lblEdad.Visible = False
            lblPrograma.Visible = False
            txtNumId.Visible = False
            txtNombres.Visible = False
            txtApellidos.Visible = False
            txtNacionalidad.Visible = False
            txtEstado.Visible = False
            txtEmail.Visible = False
            txtEdad.Visible = False
            txtPrograma.Visible = False
            btnEliminar.Visible = False

            MsgBox("No se encontró ninguna persona con el ID especificado.", MsgBoxStyle.Information, "Información de la persona")
        End If


    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        EliminarPersona.EliminarPersona(Integer.Parse(txtNumId.Text))
        Response.Redirect("WebForm2.aspx")
    End Sub

    Protected Sub btnSalir_Click(sender As Object, e As EventArgs) Handles btnSalir.Click
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnListado_Click(sender As Object, e As EventArgs) Handles btnListado.Click
        Response.Redirect("WebForm4.aspx")
    End Sub
End Class