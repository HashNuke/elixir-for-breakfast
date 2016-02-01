```elixir
defmodule Rex do
  def get("/") do
    {200, "This is the root page"}
  end


  def get("/hello") do
    {200, "This is the hello page"}
  end


  def get(_) do
    {404, "Not found"}
  end
end
```
