-module(recursion).
-export([fib/1
       ]).

% Following along in presentation.

fibP(0) -> 
  {0,1};

fibP(N) -> 
  {P,C} = fibP(N-1),
  {C,P+C}.

fib(N) ->
  {P,_} = fibP(N),
  P.
