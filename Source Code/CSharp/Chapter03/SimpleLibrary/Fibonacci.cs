using System;

namespace SimpleLibrary
{
    public class Fibonacci
    {
        public static int Calculate(int x)
        {
            if (x < 0)
                throw new ArgumentException("x must be greater than or equal to zero");
            return (x > 1) ? Calculate(x - 1) + Calculate(x - 2) : x;
        }
    }
}
