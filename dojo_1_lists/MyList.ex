defmodule MyList do
    def map([], _fun), do: []
    def map([head | tail], fun) do
        #[fun.(head) | map(tail, fun)]
        [fun.(head)] ++ map(tail, fun)
    end

    def map2(l, fun), do: do_map2(l, fun, [])

    defp do_map2([], _fun, col), do: col
    defp do_map2([h | t], fun, col) do
        do_map2(t, fun, col ++ [fun.(h)])
    end
end