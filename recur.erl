double([H|T]) ->
	NewH = 2 * H,
	NewT = double(T),
	[NewH|NewT];
double([]) ->
	[].

double([H|T]) ->
	[2*H|double(T)];
double([]) ->
	[].

