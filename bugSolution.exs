```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three_found)
    end
    IO.puts(x)
  end)
rescue
  :three_found -> IO.puts("Three found!")
  _ -> IO.puts("An unexpected error occurred.")
end

IO.puts("Finished")
```