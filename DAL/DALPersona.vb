Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports LayerEntity

Public Class DALPersona

    Dim cnn As New SqlClient.SqlConnection(Conexion.cadcon)

    Public Function AgregarPersona(Person As LayerEntity.Class1) As Boolean
        Dim cnn As New SqlConnection(DAL.Conexion.cadcon)
        Dim cmd As New SqlCommand("SP_INSERTAR_PERSONAR", cnn)

        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.Int).Value = Person.id
        cmd.Parameters.Add("nombres", SqlDbType.NVarChar, 50).Value = Person.nombres
        cmd.Parameters.Add("apellidos", SqlDbType.NVarChar, 50).Value = Person.apellidos
        cmd.Parameters.Add("nacionalidad", SqlDbType.NVarChar, 20).Value = Person.nacionalidad
        cmd.Parameters.Add("estadoCivil", SqlDbType.NVarChar, 15).Value = Person.estadoCivil
        cmd.Parameters.Add("email", SqlDbType.NVarChar, 30).Value = Person.email
        cmd.Parameters.Add("edad", SqlDbType.NVarChar, 3).Value = Person.edad
        cmd.Parameters.Add("programa", SqlDbType.NVarChar, 25).Value = Person.programa
        cmd.Parameters.Add("pass", SqlDbType.NVarChar, 15).Value = Person.pass
        Try
            If cnn.State = ConnectionState.Closed Then
                cnn.Open()
            End If
            cmd.ExecuteNonQuery()
            Console.WriteLine("hasta aca funciona")
            Return True

        Catch ex As SqlException
            Console.WriteLine("Error al agregar la persona: " + ex.Number.ToString() + " - " + ex.Message)
            Return False

        Catch ex As Exception
            Console.WriteLine("Error al agregar la persona: " + ex.Message)
            Return False

        Finally
            cnn.Close()
        End Try


    End Function

    Public Function BuscarPersona(ByVal id As Integer)
        Dim cnn As New SqlConnection(DAL.Conexion.cadcon)
        Dim cmd As New SqlCommand("SP_BUSCAR_PERSONAR", cnn)

        Dim queryString As String = "SELECT * FROM Persona WHERE id = @id"
        Dim command As New SqlCommand(queryString, cnn)
        command.Parameters.AddWithValue("@id", id)
        Dim adapter As New SqlDataAdapter(command)
        Dim table As New DataTable()
        adapter.Fill(table)
        If table.Rows.Count > 0 Then
            Return table.Rows(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function EliminarPersona(ByVal id As Integer)
        Dim cnn As New SqlConnection(DAL.Conexion.cadcon)
        Dim cmd As New SqlCommand("SP_ELIMINAR_PERSONA", cnn)

        cmd.Parameters.Add("id", SqlDbType.Int).Value = id
        cmd.CommandType = CommandType.StoredProcedure

        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Function

    Public Function Login(ByVal email As String, ByVal password As String) As Boolean
        Dim cnn As New SqlConnection(DAL.Conexion.cadcon)
        Dim cmd As New SqlCommand("SELECT COUNT(*) FROM persona WHERE email=@email AND pass=@password", cnn)

        cmd.Parameters.AddWithValue("@email", email)
        cmd.Parameters.AddWithValue("@password", password)
        cnn.Open()
        Dim resultado As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        cnn.Close()
        If resultado > 0 Then
            ' El inicio de sesión es exitoso.
            Return True
        Else
            ' El inicio de sesión falló.
            Return False
        End If
    End Function
End Class
