defmodule FizzBuzz do

  def run(n) do
    1..n
    |> Enum.map &(_fizzbuzz &1)

  end

  defp _fizzbuzz(n) when rem( n, 5 ) == 0 and rem( n, 3 ) == 0 do
    IO.puts "FizzBuzz"
  end

  defp _fizzbuzz(n) when rem( n, 5 ) == 0 do
    IO.puts "Buzz"
  end

  defp _fizzbuzz(n) when rem( n, 3 ) == 0 do
    IO.puts "Fizz"
  end

  defp _fizzbuzz(n) do
    IO.puts n
  end

end
