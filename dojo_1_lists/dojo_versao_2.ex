defmodule Tri do
  def tri(0), do: []
  def tri(n) do
    kmax = n*(n+1)/2 |> round
    kmin = kmax - n + 1
    tri(n-1) ++ [try2(kmin,kmax)]
  end
  def try2(a,a), do: [a]
  def try2(a,b) do
    [a | try2(a+1,b)]
  end
end