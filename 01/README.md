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

## Pipes

-- in session --

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

#### A little useful server

* difference between call & cast
* using casts

```
$ iex stack_server.ex
iex> StackServer.start_link
iex> GenServer.call StackServer, :state
...
```

#### Role playing server

```
# from one computer/terminal
$ iex --name "akshay@192.168.2.8" --cookie foobar bank_server.ex
iex> BankServer.start_link

# from another computer/terminal
# cookie value must be the same
$ iex --name "kumar@192.168.2.8" --cookie foobar bank_server.ex
iex> Node.connect :"akshay@192.168.2.8"
true
iex> Node.list
[:"akshay@192.168.2.8"]
iex> Node.list |> GenServer.multi_call :bank, :balance
```

#### Turning to `mix`

-- in session --

## End notes

GenServer is like a push-button. Tiny but useful. Combine with more OTP abstractions and the usefulness is amplified.

----

* [Elixir cheatsheet](https://media.pragprog.com/titles/elixir/ElixirCheat.pdf)
* [Supervisors](http://learnyousomeerlang.com/supervisors) chapter in LearnYouSomeErlang
* [Elixir and the internet of things](https://www.youtube.com/watch?v=a-OCorBXX7M) - talk by Doug Roher. Simple explanations about restart strategies and other nice things. Blog posts: [part-1](http://www.neo.com/2014/01/14/elixir-and-the-internet-of-things-handling-a-stampede), [part-2](http://www.neo.com/2014/01/30/elixir-and-the-internet-of-things-part-2-whats-in-a-process), [part-3](http://www.neo.com/2014/03/06/elixir-and-the-internet-of-things-part-3-rabbits-rabbits-everywhere)
* [Ruby + Elixir Polyglotting FTW](http://confreaks.tv/videos/rdrc2014-ruby-elixir-polyglotting-ftw) - Talk with nice visualization of process spawning
* [History of the Button](https://www.youtube.com/watch?v=zdwUbhm-8Mw) - talk by Bill DeRouchey about the push button ([slides](http://www.slideshare.net/billder/history-of-the-button-at-sxsw))
