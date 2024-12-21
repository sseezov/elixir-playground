# обычный кортеж
# items1 = {:ok, "all is fine"}

# # первый способ объявить словарь
# items2 = [a: 2, b: 3]

# второй способ, по сути идентичный первому
items3 = [{:a, 2}, {:b, 3}]

# IO.puts() не работает со списками, поэтому IO.inspect()
IO.inspect(items3)

IO.puts(items3[:a])
