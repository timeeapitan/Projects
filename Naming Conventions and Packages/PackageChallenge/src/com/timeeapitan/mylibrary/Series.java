package com.timeeapitan.mylibrary;

public class Series {

    // or return (n * (n + 1))/2
    public static long nSum(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum = sum + i;
        }

        return sum;
    }

    public static int factorial(int n) {
        if (n == 0) {
            return 1;
        }
        int factorial = 1;
        for (int i = 1; i <= n; i++) {
            factorial = factorial * i;
        }
        return factorial;
    }

    public static long fibonacci(int n) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        }

        long a = 0;
        long b = 1;
        long fib = 0;

        for (int i = 1; i < n; i++) {
            fib = a + b;
            a = b;
            b = fib;
        }

        return fib;
    }

}
