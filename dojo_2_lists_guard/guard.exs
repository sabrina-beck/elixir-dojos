defmodule Guard do
  def what_is(x) when is_atom(x) do
    IO.puts "atom"
  end
  def what_is(x) when is_integer(x) do
    IO.puts "int"
  end
  def what_is(x) when is_list(x) do
    IO.puts "list"
  end
end
