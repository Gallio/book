﻿' Copyright 2005-2008 Gallio Project - http:'www.gallio.org/
' Portions Copyright 2000-2004 Jonathan De Halleux, Jamie Cansdale
' 
' Licensed under the Apache License, Version 2.0 (the "License");
' you may not use this file except in compliance with the License.
' You may obtain a copy of the License at
' 
'     http:'www.apache.org/licenses/LICENSE-2.0
' 
' Unless required by applicable law or agreed to in writing, software
' distributed under the License is distributed on an "AS IS" BASIS,
' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
' See the License for the specific language governing permissions and
' limitations under the License.

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