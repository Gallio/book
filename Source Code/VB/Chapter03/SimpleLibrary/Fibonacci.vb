Public Class Fibonacci
    Public Shared Function Calculate(ByVal x As Integer) As Integer
        If x < 0 Then
            Throw New ArgumentException("x must be greater than or equal to zero")
        End If
        If x < 2 Then
            Return x
        End If
        Return Calculate(x - 1) + Calculate(x - 2)
    End Function
End Class