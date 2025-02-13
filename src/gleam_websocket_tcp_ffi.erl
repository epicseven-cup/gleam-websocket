
%% @doc Basic socket module using for tcp connection using gen_tcp

-module(gleam_websocket_tcp_ffi)


%% Socket basic logic
-export([])


%% @doc Send Packet using gen_tcp socket
send(Socket, Packet) ->
	case gen_tcp:send(Socket, Packet) of
		ok ->
			{ok, nil}
		Res -> 
			Res
	end.


%% @doc Shutdown TCP socket
shutdown(Socket, How) ->
	case gen_tcp:shutdown(Socket, How) of
		ok ->
			{ok, nil}
		{error, Reason} ->
			{error, Reason}
