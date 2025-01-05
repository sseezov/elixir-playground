list = [1, 2, 3]

result =
  case Enum.at(list, 2) do
    1 -> "this won't print"
    3 -> "yep"
    _ -> "all others"
  end

IO.puts(result)

result2 =
  cond do
    Enum.at(list, 2) === 2 ->
      "no"

    Enum.at(list, 2) === 3 ->
      "yes"

    true ->
      "catch block"
  end

IO.puts(result2)
