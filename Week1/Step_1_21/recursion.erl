-module(recursion).
-export([fac/1,
         loop/1,
         sum/1,
         maximum/1
        ]).

% Work from 1_21

fac(N) -> fac(N,1).

fac(0,P) -> P;
fac(N,P) when N > 0 -> fac(N-1,P*N).

% Sum work Example asked to work in presentation

sum(N) -> sum(N,0).

sum(0,P) -> P;
sum(N,P) when N > 0 -> sum(N-1, P+N).

% Max value

maximum(N) -> max(N,0).

maximum(0,P) -> P;
maximum(N,P) when N >= P -> maximum(N-1,N);
maximum(N,P) -> maximum(N-1,P).

% Looping the loop

loop(N) when N>0 ->
  io:format("~p~n",[N]),
  loop(N-1);
loop(0) ->
  io:format("bye~n").

% Work from 1_19
%
% fac(0) -> 1;
% fac(N) when N>0 -> fac(N-1)*N.
% 
% fib(0) -> 0;
% fib(1) -> 1;
% fib(N) when N>0 -> fib(N-1)+fib(N-2).

% pieces(0) -> 1;
% pieces(N) when N>0 -> N + pieces(N-1).

% binomial(N,K) -> fac(N)/(fac(K)*fac(N-K)).

% thirdDimPieces(0) -> 1;
% thirdDimPieces(1) -> 2;
% thirdDimPieces(2) -> 4;
% thirdDimPieces(N) when N>3 -> binomial(N,3)
%                               + binomial(N,2)
%                               + binomial(N,1)
%                               + binomial(N,0).
