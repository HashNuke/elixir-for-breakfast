defmodule HelloServer do
  use GenServer

  def handle_call(:hello, _from, state) do
    {:reply, "hello", state}
  end
end
