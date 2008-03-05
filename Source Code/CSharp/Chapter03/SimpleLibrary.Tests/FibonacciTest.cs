using System;
using SimpleLibrary;
using MbUnit.Framework;

namespace SimpleLibrary.Test
{
    [TestFixture]
    public class FibonacciTest
    {
        [Test]
        public void FibonacciOfNumberGreaterThanOne()
        {
            Assert.AreEqual(Fibonacci.Calculate(6), 8);
        }

        [Test]
        [ExpectedException(typeof(ArgumentException))]
        public void FibonacciOfNegativeNumberDoesNotExist()
        {
            Fibonacci.Calculate(-1);
        }

        [Test]
        [Row(0, 0)]
        [Row(1, 1)]
        public void LowerBoundsTest(int x, int expectedFibonacciNumber)
        {
            Assert.AreEqual(Fibonacci.Calculate(x), expectedFibonacciNumber);
        }
    }
}
