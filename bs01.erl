-module(bs01).
-export(first_word/1).

BinText = <<"Some text">>.
first_word(Bin) -> 
	first_word(Bin,<<>>);
first_word(<<" ", _Res/binary>>, Acc) ->
	Acc;
first_word(<<x, Rest/binary, Acc>>) ->
	first_word(Rest, <<Acc/binary, x>>).

