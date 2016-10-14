defmodule Dojo do
  def first_item(n) do
      (1 + (n - 1)) * (n - 1) / 2 + 1 |> round
  end

  def floyd(0), do: []
  def floyd(n) do
    first_item = first_item(n)
    floyd(n - 1) ++ [Enum.to_list(first_item..(first_item+(n - 1)))] 
  end

  #defp do_floyd(i,n) do
  #  [do_floyd(i-(n-2),n-1)|[Enum.to_list i..i+(n-1)]]
  #end  
end

#assert Dojo.floyd(0) == []
#assert Dojo.floyd(1) == [[1]]
#assert Dojo.floyd(2) == [
#    [1],
#    [2, 3]
#]
