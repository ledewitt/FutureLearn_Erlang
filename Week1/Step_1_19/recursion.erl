-module(recursion).
-export([fac/1,
         fib/1
        ]).

fac(0) -> 1;
fac(N) when N>0 -> fac(N-1)*N.

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N>0 -> fib(N-1)+fib(N-2).
