defmodule GreatestNumber do

  def get(list) do
    list = list |> Enum.sort |> Enum.reverse
    max = Enum.at(list, 0)
    max_str = Integer.to_string max
    max_c = String.length max_str
    
    res_list = process_list list, {max, max_str, max_c}
    
    res_list
      |> Enum.sort(fn {o1, n1},{o2, n2} ->
          cond do
            n2 > n1 ->
              true
            n2 == n1 ->
              avg_1 = get_average(n1)
              avg_2 = get_average(n2)
              if avg_2 == avg_1 do
                o2 > o1
              else
                avg_2 > avg_1
              end
            n2 < n1 ->
              false
          end
        end) 
      |> Enum.reverse
      |> Enum.reduce("", fn {el, _}, acc -> acc <> Integer.to_string el end )
  end
  def get_average(str_number) do
    sum = fn 
        "", acc -> {0, acc}
        n, acc  -> 
          n = String.to_integer n
          {n , n + acc}
      end
    IO.inspect sum.("2", 7)
    { _ , sum} = str_number
      |> String.split("")
      |> Enum.map_reduce(0, sum)

    sum / String.length(str_number)
  end
  def process_list([el|tail], {max, max_str, max_c}) do
    str_el = Integer.to_string el
    len = String.length str_el
    int_el = el

    if len < max_c do
      diff = (max_c - len) - 1
      str_el = str_el <> String.slice(max_str, 0..diff)
      int_el = String.to_integer str_el
      if int_el > max do
        max = int_el
        max_str = str_el
      end
    end
    IO.inspect {el, int_el, max}
    [{el, int_el} | process_list(tail, {max, max_str, max_c})]
  end

  def process_list([], _) do
    []
  end

end

# Failing Repeating the first number: 53(55), 5354, 52

ExUnit.start                                # set up the test runner

defmodule GreatestNumberTest do
  use ExUnit.Case                          # use requires a module and sets up macros; will explore more later

  test 'Basic Test' do
    assert GreatestNumber.get([50, 2, 9, 1]) == "95021"
  end

  test 'Medium difficult test' do
    assert GreatestNumber.get([5354, 535, 53, 5]) == "5535535453"
  end

  test 'Subsets test' do
    assert GreatestNumber.get([11311, 113, 1131]) == "113113111311"
  end
  test 'Subsets greater numbers' do
    assert GreatestNumber.get([44344, 443, 4434]) == "44344444434443"
  end
 
end
