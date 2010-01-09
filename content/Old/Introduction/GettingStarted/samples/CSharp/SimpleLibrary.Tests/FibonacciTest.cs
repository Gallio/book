// Copyright 2005-2010 Gallio Project - http://www.gallio.org/
// Portions Copyright 2000-2004 Jonathan De Halleux, Jamie Cansdale
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
