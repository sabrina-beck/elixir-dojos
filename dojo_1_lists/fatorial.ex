defmodule Fatorial do
    def fat(0), do: 1
    def fat(n) do
        n * fat(n-1)
    end
end

IO.puts Fatorial.fat(10)

# fibonacci
# para n = 0, f(n) = 0
# para n = 1, f(n) = 1
# para n > 1, f(n) = f(n-1) + f(n-2)