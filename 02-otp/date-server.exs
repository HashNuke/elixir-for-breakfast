defmodule DateServer do
  use GenServer

  def handle_call(:datetime, _from, state) do
    datetime = :calendar.local_time
    {:reply, datetime, state}
  end

end
