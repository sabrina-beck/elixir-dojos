defmodule FizzBuzz do
  def fb(n) do
    do_fb(rem(n, 3), rem(n, 5), n)
  end

  defp do_fb(0, 0, _), do: "FizzBuzz"
  defp do_fb(0, _, _), do: "Fizz"
  defp do_fb(_, 0, _), do: "Buzz"
  defp do_fb(_, _, n), do: n

  def fb2(n) when rem(n,3) == 0 and rem(n,5) == 0 do
    "Fizzbuzz"
  end
  def fb2(n) when rem(n,3) == 0 do
    "Fizz"
  end
  def fb2(n) when rem(n,5) == 0 do
    "Buzz"
  end
  def fb2(n) do
    n
  end
end

FizzBuzz.fb(3)  # Fizz
FizzBuzz.fb(5)  # Buzz
FizzBuzz.fb(15) # FizzBuzz
FizzBuzz.fb(7)  # 7
