# создать структуру
defmodule User do
  defstruct username: "", email: "", age: nil
end

defmodule Main do
  user1 = %User{username: "Sergey", email: "ss@ss", age: 34}
  IO.inspect(user1)

  # update
  user1 = %{user1 | age: 35}
  IO.inspect(user1)
end
