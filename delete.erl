-module(delete).
-export(begin/1).

[begin
	X1 = binary_to_integer(X),
	Y1 = binary_to_integer(X),
	X1 + Y1
end || {X,Y} <- L, is_binary(X), is_binary(Y)]
