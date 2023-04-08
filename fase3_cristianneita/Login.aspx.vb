Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports DAL
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim InicioSesion As New DAL.DALPersona
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        If InicioSesion.Login(txtEmail.Text, txtPassword.Text) Then
            ' El inicio de sesión es exitoso.
            Label1.Text = "Sesión iniciada correctamente"
            Response.Redirect("WebForm2.aspx")
        Else
            ' El inicio de sesión falló.
            Label1.Text = "Nombre de usuario o contraseña incorrectos"
        End If
    End Sub
End Class