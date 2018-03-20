-module(p05).
-export([reverse/1]).

%% Перевернуть список
reverse( List ) ->
	reverse( List, [] ).
reverse( [], List ) ->	
	List;
reverse( [H|T], List ) ->
	reverse(T, [H|List] ).
