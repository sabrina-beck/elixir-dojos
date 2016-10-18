defmodule Guess do

  def guess(n, ri..rf) when n > rf or n < ri do
    :error
  end

  def guess(n, ri..rf) do
    mid = div((rf+ri), 2)
    do_guess(n, mid, ri..rf)
  end

  defp do_guess(n, curr, _) when (n == curr) do
    IO.puts "#{n}"
  end

  defp do_guess(n, curr, ri.._rf) when (n < curr) do
    IO.puts "Is it #{curr}"
    do_guess(n, div((ri+curr), 2), ri..curr-1)
  end

  defp do_guess(n, curr, _ri..rf) when (n > curr) do
    IO.puts "Is it #{curr}"
    do_guess(n, div((curr+rf), 2), curr+1..rf)
  end

end
