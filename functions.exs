defmodule Index do
  def helloWorld do
    IO.puts(~c"Hello, world!")
  end
end

# функции могут иметь одно название, но при разном количестве аргументов являются разными функциями
defmodule Reactangle1 do
  def area(a) do
    area(a, a)
  end

  def area(a, b) do
    a * b
  end
end

# короткий способ записи функций
defmodule Reactangle2 do
  def area(a), do: area(a, a)

  def area(a, b), do: a * b
end

# параметры по умолчанию
defmodule Reactangle3 do
  def area(a, b \\ 10), do: a * b
end

# приватные функции доступны только в пределах модуля
defmodule TestPrivate do
  def double(a) do
    sum(a, a)
  end

  defp sum(a, b) do
    a + b
  end
end

IO.puts(TestPrivate.double(10)) # так работает
# IO.puts(TestPrivate.sum(10, 10)) # а так нет
