defmodule StackServer do
  use GenServer

  def start_link(args \\ []) do
    GenServer.start_link __MODULE__, args, [name: __MODULE__]
  end


  def handle_call({:push, x}, _from, state) do
    new_state = [x | state]
    {:reply, new_state, new_state}
  end


  def handle_call(:pop, _from, []) do
    {:reply, [], []}
  end


  def handle_call(:pop, _from, state) do
    [ _latest | rest ] = state
    {:reply, rest, rest}
  end


  def handle_call(:state, _from, state) do
    {:reply, state, state}
  end
end
