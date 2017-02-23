-module(recursion).
-export([fac/1,
         fib/1,
         pieces/1,
         binomial/2,
         thirdDimPieces/1
        ]).

fac(0) -> 1;
fac(N) when N>0 -> fac(N-1)*N.

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N>0 -> fib(N-1)+fib(N-2).

pieces(0) -> 1;
pieces(N) when N>0 -> N + pieces(N-1).

binomial(N,K) -> fac(N)/(fac(K)*fac(N-K)).

thirdDimPieces(0) -> 1;
thirdDimPieces(1) -> 2;
thirdDimPieces(2) -> 4;
thirdDimPieces(N) when N>3 -> binomial(N,3)
                              + binomial(N,2)
                              + binomial(N,1)
                              + binomial(N,0).
