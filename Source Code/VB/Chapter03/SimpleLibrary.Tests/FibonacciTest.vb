' Copyright 2005-2008 Gallio Project - http:'www.gallio.org/
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

Imports SimpleLibrary
Imports MbUnit.Framework

<TestFixture()> _
Public Class FibonacciTest
    <Test()> _
    Public Sub FibonacciOfNumberGreaterThanOne()
        Assert.AreEqual(Fibonacci.Calculate(6), 8)
    End Sub
    <Test()> _
    <Row(0, 0)> _
    <Row(1, 1)> _
    Public Sub LowerBoundsTest(ByVal x As Integer, ByVal expectedFibonacciNumber As Integer)
        Assert.AreEqual(Fibonacci.Calculate(x), expectedFibonacciNumber)
    End Sub
    <Test()> _
    <ExpectedException(GetType(ArgumentException))> _
    Public Sub FibonacciOfNegativeNumberDoesNotExist()
        Fibonacci.Calculate(-1)
    End Sub
End Class

