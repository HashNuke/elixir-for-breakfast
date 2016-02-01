
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

* `account-server-2.exs`
* Same as #1.
* Has guards.

## AccountServer (3)

```
$ iex account-server-3.exs
iex> {:ok, pid} = GenServer.start_link AccountServer, 0
#PID<0.65.0>
iex> GenServer.call pid, {:deposit, 10}
10
iex> GenServer.cast pid, {:announce, url}
110
iex> GenServer.call pid, {:deposit, 20}
130
```

## ---

Rex

## ---

```
:debugger.start
:inet.start
```

## Refs

* Expressions in guard clauses - <http://elixir-lang.org/getting-started/case-cond-and-if.html#expressions-in-guard-clauses>
