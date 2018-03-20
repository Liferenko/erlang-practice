-module(p04).
-export([len/1, alt_len/1]).

%% Посчитать количество элементов списка
len( [] ) ->
	0;
len( List ) ->
	len( List, 0 ).
len( [], Length ) ->
	Length;
len( [_|T], Length ) ->
	len( T, Length+1 ).

%% Альтернативное решение длины списка

alt_len(Y) -> 
	case Y of
		[] -> 0;
		[_|T] -> 1+alt_len(T)
	end.
