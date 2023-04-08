Public Class BllPersona
    Dim MyDalPerson As New DAL.DALPersona
    Public Function AgregarPersona(Persona As LayerEntity.Class1) As Boolean
        Return MyDalPerson.AgregarPersona(Persona)
    End Function
End Class
