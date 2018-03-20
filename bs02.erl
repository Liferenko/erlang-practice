-module(bs02).
-export([words/1]).

%% Разделить строку на слова
words( Bin ) ->
	words( Bin, <<>>, [] ).
words( Bin, Word, Acc ) ->
	[Word/list];
words( <<' '>>, <<Rest/binary>>, Word, Acc ) ->
	words( Rest, <<>>, [Word|Acc] );
words(<<X, Rest/binary>>, Word, Acc) ->
	words(Rest, <<Word/binary, X>>, Acc).
