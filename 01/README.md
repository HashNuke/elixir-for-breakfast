## Starting and exiting Interactive Elixir

* `iex` is the Interactive Elixir console.
* Press ctrl+c and then `a` to exit `iex`

```
$ iex
iex> 1 + 3
4
iex> # on pressing ctrl-c
BREAK: (a)bort (c)ontinue (p)roc info (i)nfo (l)oaded
       (v)ersion (k)ill (D)b-tables (d)istribution
a
```

## Numbers, strings, lists, maps, tuples

```
iex> 15 + 20
35

iex> 15.2 / 2
7.6

iex> name = "Kailash"
"Kailash"

iex> "Hello #{name}. How are you?"
"Hello Kailash. How are you?"
```

##### Keyword lists

```
iex> x = [a: 1, b: 2]
iex> Keyword.get x, :b
2
```

* Keyword lists are OK for small data. Like args you pass to a function.
* Use Maps for faster lookups

##### Maps

```
%{a: 1, b: 2}
```

## Atoms

```
:hello_world
:OhMyButterFly
```

```
iex> is_atom :OhMyButterFly
true
```

Not garbage collected. So don't abuse them.

## Elixir strings are UTF-8 binaries

* Double-quoted Elixir strings are UTF-8 binaries.
* Single-quoted Elixir strings are char lists.

```
iex> "kumar" == 'kumar'
false

iex> name = 'kumar'
iex> "kumar" = "#{name}"
```

* Both forms support interpolation
* Can convert from one form to another with interpolation


## Pattern matching

* With tuples, lists, maps
* Underscore-prefixed variables

## Modules & functions

```
# start the IEx console with the file loaded
$ iex greeting.ex

iex> Greeting.hello
"hello"

iex> Greeting.hello "kumar"
"hello kumar"
```

#### Pattern matching in function arguments

```
# start the IEx console with the file loaded
$ iex native_greeting.ex

iex> Greeting.Native.location(:chennai)
"hi macha"

iex> Greeting.Native.location(:bengaluru)
"yen guru samachara"
```


## GenServer

One of the most powerful things about Erlang/Elixir, are the abstractions that OTP offers.

#### A totally useless server

```
# start the IEx console with the file loaded
$ iex hello_server.ex

# start the HelloSever with an empty list as args
iex> {:ok, s} = GenServer.start HelloServer, []

iex> GenServer.call s, :hello
"hello"
```

* Messages are queued. GenServers have message boxes.
* GenServers will crash if you pass messages they cannot handle.

#### A little useful GenServer

* difference between call & cast
* using casts

```
TODO
```

## End notes

GenServer is like a push-button. It's tiny and it's useful. But if combined with more abstractions, it becomes more powerful & useful.

----

* [History of the Button](https://www.youtube.com/watch?v=zdwUbhm-8Mw) - talk by Bill DeRouchey about the push button. ([slides](http://www.slideshare.net/billder/history-of-the-button-at-sxsw))
