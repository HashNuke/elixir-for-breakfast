
## DateServer

```
$ iex date-server.exs
iex> {:ok, pid} = GenServer.start_link DateServer, []
#PID<0.65.0>
iex> GenServer.call pid, :datetime
{{2016, 1, 6}, {8, 55, 32}}
```

## AccountServer (1)

```
$ iex account-server-1.exs
iex> {:ok, pid} = GenServer.start_link AccountServer, 0
#PID<0.65.0>
iex> GenServer.call pid, {:deposit, 10}
10
iex> GenServer.call pid, {:deposit, 100}
110
iex> GenServer.call pid, {:deposit, 20}
130
```

## AccountServer (2)

```
$ iex account-server-2.exs
iex> {:ok, pid} = GenServer.start_link AccountServer, 0
#PID<0.65.0>
iex> GenServer.call pid, :datetime
{{2016, 1, 6}, {8, 55, 32}}
```


## Refs

* Expressions in guard clauses - <http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses>
