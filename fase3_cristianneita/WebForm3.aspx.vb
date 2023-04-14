Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports DAL
Public Class WebForm3
    Inherits System.Web.UI.Page
    Dim NewPersona As New LayerEntity.Class1
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        NewPersona.id = Integer.Parse(txtId.Text)
        NewPersona.nombres = txtNombres.Text
        NewPersona.apellidos = txtApellidos.Text
        NewPersona.nacionalidad = txtNacionalidad.Text
        NewPersona.estadoCivil = txtEstadoCivil.Text
        NewPersona.email = txtEmail.Text
        NewPersona.edad = txtEdad.Text
        NewPersona.programa = txtPrograma.Text
        NewPersona.pass = txtPassword.Text
        Dim bllPersonas As New BLL.BllPersona
        If bllPersonas.AgregarPersona(NewPersona) Then
            lblRespuesta.Text = $"Agregado '{txtNombres.Text}'"
            Response.Redirect("Login.aspx")
        Else
            lblRespuesta.Text = $"No se guardo '{txtId.Text}'"
        End If
    End Sub
End Class