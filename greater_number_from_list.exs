defmodule GreaterNumber do
  def get(list) do
    len = get_max_length(list) 
    norm = Enum.map(list, fn n ->
      sn = Integer.to_string n 
      first = sn[0]
      nn = String.ljust(sn, len, first) |> String.to_integer
      {nn, n}
    end)
    IO.inspect norm
  end

  @doc "Returns the length of the longest number"
  def get_max_length(list) do
    Enum.max(list) |> Integer.to_string |> String.length
  end
end

# Failing Repeating the first number: 53(55), 5354, 52

ExUnit.start                                # set up the test runner

defmodule ListasTest do
  use ExUnit.Case                          # use requires a module and sets up macros; will explore more later

  test 'Basic Test' do
    assert GreaterNumber.get([50, 2, 9, 1]) == 95021
  end
 
end
