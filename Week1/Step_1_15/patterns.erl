-module(patterns).
-export([maxThree/3,
         howManyEqual/3,
         exOr/2]).

maxThree(X,Y,Z) ->
  max(max(X,Y),Z).

howManyEqual(X,X,X) -> 3;
howManyEqual(X,X,_) -> 2;
howManyEqual(X,_,X) -> 2;
howManyEqual(_,X,X) -> 2;
howManyEqual(_,_,_) -> 0.

% Case 1
% exOr(X,X) -> false;
% exOr(_,_) -> true.

% Case 2
% exOr(X,Y) -> X=/=Y.

% Case 3
exOr(X,Y) -> not(X==Y).

% Case Given as Example
% exOr(true,X) ->
%   not(X);
% exOr(false,X) ->
%   X.
