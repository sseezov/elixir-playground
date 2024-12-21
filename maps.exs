my_map = %{a: 1, b: 2, c: 3}
IO.inspect(my_map)

# частичное деструктурирование
%{b: second} = my_map
IO.puts(second)

# допустимый вариант обращения по ключу
IO.puts(my_map.a)

map2 = %{"a" => 1, "b" => 2}

# обновим значение ключа
map2 = %{map2 | "b" => 3}
IO.inspect(map2)
