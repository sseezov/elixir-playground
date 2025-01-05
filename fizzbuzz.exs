defmodule FizzBuzz do
  def main() do
    1..100
    |> Enum.map(&fizz_buzz/1)
    |> Enum.join(" ")
  end

  @spec fizz_buzz(integer()) :: String.t()
  def fizz_buzz(num) do
      cond do
        rem(num, 15) == 0 -> "fizzbuzz"
        rem(num, 3) == 0 -> "fizz"
        rem(num, 5) == 0 -> "buzz"
        true -> to_string(num)
      end
  end
end

IO.puts(FizzBuzz.main())
