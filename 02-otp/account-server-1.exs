defmodule AccountServer do
  use GenServer

  def handle_call({:deposit, amount}, _from, state) do
    new_state = state + amount
    {:reply, new_state, new_state}
  end


  def handle_call({:withdraw, amount}, _from, state) do
    new_state = state - amount
    {:reply, new_state, new_state}
  end
end
