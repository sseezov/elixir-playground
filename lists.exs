list = [1, "2", "d"]
# list[0] не сработает, надо вот так
IO.puts(Enum.at(list, 0))

# деструктивное присвоение, игнорируем первое и третье значение
[_, second, _] = list
IO.puts(second)

# массив как связный список состоит из головы и хвоста
[head | tail] = list
IO.puts(head)
IO.puts(tail)
