Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports DAL
Imports System.Windows.Forms

Public Class WebForm4
    Inherits System.Web.UI.Page
    Dim listar As New DALPersona
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim datos As DataTable = listar.ListarPersonas()
            GridView1.DataSource = datos
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub


    Protected Sub btnVolver_Click(sender As Object, e As EventArgs) Handles btnVolver.Click
        Response.Redirect("WebForm2.aspx")
    End Sub
End Class