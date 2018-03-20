-module(p07).
-export([flatten/1]).

%% Выровлять структуру
flatten( [] ) ->
	[];
flatten([[]|T]) ->
	flatten(T);
flatten( [[H|T]|T2] ) ->
	flatten([H|[T|T2]]);
flatten( [H|T] ) ->
	[H|flatten(T)].

%% Решение преподавателя
%% sunsei_flatten( List ) ->
	reverse( flatten(List), [] );
flatten( [[]|T], Acc ) ->
	flatten(  ).

flatten( [H|T], Acc ) ->
	flatten(  ).
flatten( [], Acc ) ->
	Acc.
