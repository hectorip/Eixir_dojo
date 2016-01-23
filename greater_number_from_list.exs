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
              o2 > o1
            n2 < n1 ->
              false
          end
        end) 
      |> Enum.reverse
      |> Enum.reduce("", fn {el, _}, acc -> acc <> Integer.to_string el end )
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

# defmodule Otra do
#   def get_nth_digit(list) do
#     list |> Enum.map(fn initial ->
#       { String.to_integer(String.at(initial, 0)),
#         String.slice(initial, 1..-1),
#         initial
#       }end)
#   end

#   def group_by_initial(list) do
#     list |> Enum.group_by fn {first, _, _} ->
#       first
#     end
#   end

#   def select_max_number(list) do
#     current = 0
#     list |> Enum.filter(fn el ->

#       if Enum.at(el, 0) >= current do
#         current
#       end
#     end)
#   end

#   @doc "Returns the length of the longest number"
#   def get_string_list(list) do
#     list |> Enum.map fn el -> [el, Integer.to_string]
#   end
# end

# # Failing Repeating the first number: 53(55), 5354, 52

# ExUnit.start                                # set up the test runner

# defmodule GreatestNumberTest do
#   use ExUnit.Case                          # use requires a module and sets up macros; will explore more later

#   test 'Basic Test' do
#     assert GreatestNumber.get([50, 2, 9, 1]) == 95021
#   end
 
# end
