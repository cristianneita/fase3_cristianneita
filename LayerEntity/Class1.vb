Public Class Class1
#Region "CAMPOS"
    Public _Id As Integer
    Public _Nombre As String
    Public _Apellidos As String
    Public _Nacionalidad As String
    Public _EstadoCivil As String
    Public _Email As String
    Public _Edad As String
    Public _Programa As String
    Public _Password As String
#End Region

#Region "Propiedades"
    Public Property id As Integer
        Get
            Return _Id
        End Get
        Set(value As Integer)
            _Id = value
        End Set
    End Property

    Public Property nombres As String
        Get
            Return _Nombre
        End Get
        Set(value As String)
            _Nombre = value
        End Set
    End Property

    Public Property apellidos As String
        Get
            Return _Apellidos
        End Get
        Set(value As String)
            _Apellidos = value
        End Set
    End Property

    Public Property nacionalidad As String
        Get
            Return _Nacionalidad
        End Get
        Set(value As String)
            _Nacionalidad = value
        End Set
    End Property


    Public Property estadoCivil As String
        Get
            Return _EstadoCivil
        End Get
        Set(value As String)
            _EstadoCivil = value
        End Set
    End Property

    Public Property email As String
        Get
            Return _Email
        End Get
        Set(value As String)
            _Email = value
        End Set
    End Property

    Public Property edad As String
        Get
            Return _Edad
        End Get
        Set(value As String)
            _Edad = value
        End Set
    End Property

    Public Property programa As String
        Get
            Return _Programa
        End Get
        Set(value As String)
            _Programa = value
        End Set
    End Property

    Public Property pass As String
        Get
            Return _Password
        End Get
        Set(value As String)
            _Password = value
        End Set
    End Property
#End Region

    Public Sub New()

    End Sub

    Public Sub New(ByVal id_ As Integer, ByVal nombres_ As String, ByVal apellidos_ As String,
                   ByVal nacionalidad_ As String, ByVal estadoCivil_ As String, ByVal email_ As String,
                   ByVal edad_ As String, ByVal programa_ As String, ByVal pass_ As String)
        _Id = id_
        _Nombre = nombres_
        _Apellidos = apellidos_
        _Nacionalidad = nacionalidad_
        _EstadoCivil = estadoCivil_
        _Email = email_
        _Edad = edad_
        _Programa = programa_
        _Password = pass_

    End Sub

End Class
