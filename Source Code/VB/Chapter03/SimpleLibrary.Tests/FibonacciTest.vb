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

