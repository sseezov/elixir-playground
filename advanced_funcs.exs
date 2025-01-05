# рекурсивный подсчет элементов массива

defmodule ListHelper do
  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end
end

IO.puts(ListHelper.sum([1, 2, 3, 4]))

# хвостовая рекурсия
defmodule ListHelper2 do
  def sum(list) do
    do_sum(0, list)
  end

  defp do_sum(current_sum, []) do
    current_sum
  end

  defp do_sum(current_sum, [head | tail]) do
    new_sum = head + current_sum
    do_sum(new_sum, tail)
  end
end

result2 = ListHelper2.sum([1, 2, 3, 4])
IO.puts(result2)
