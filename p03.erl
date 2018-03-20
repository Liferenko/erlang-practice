-module(p03).
-export([element_at/2, element_at_1/2]).

%% Найти N-й элемент списка (с началом с нуля)
element_at( [H|_], 0 ) ->
	H;
element_at( [_|T], Index ) ->
	element_at( T, Index-1 ).

%% Найти N-й элемент без опоры на нулевое начало
element_at_1( [H|_], 1 ) ->
	H;
element_at_1( [_|T], Index ) ->
	element_at_1( T, Index-1 ).
