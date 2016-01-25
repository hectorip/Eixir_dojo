defmodule Algorithms do
  
  def greatest_number(list) do
    list |> Enum.sort fn el, el2 ->
      str_n = Integer.to_string el
      str_n2 = Integer.to_string el2
      if (str_n <> str_n2) > (str_n2 > str_2) do
        1
      else
        -1
      end

      if (str_n <> str_n2) == (str_n2 > str_2) do
        0
      end
    end
  end
end

ExUnit.start

defmodule greatest_number do
  use ExUnit.Case

  test 'Basic Test' do
    assert Algorithms.greatest_number([50, 2, 9, 1]) == "95021"
  end

  test 'Medium difficult test' do
    assert Algorithms.greatest_number([5354, 535, 53, 5]) == "5535535453"
  end

  test 'Subsets test' do
    assert Algorithms.greatest_number([11311, 113, 1131]) == "113113111311"
  end
  test 'Subsets greater numbers' do
    assert Algorithms.greatest_number([44344, 443, 4434]) == "443444434443"
  end

  test 'Consecutive numbers' do
    assert Algorithms.greatest_number([1, 2, 3, 4, 5, 6, 7 ,8 , 9]) == "987654321"
  end
  test 'Desc consecutive numbers' do
    assert Algorithms.greatest_number([1000, 200, 30, 4]) == "4302001000"
  end
  test 'Repeated numbers test' do
    assert Algorithms.greatest_number([111, 111, 111, 222, 22]) == "22222111111111"
  end
  test 'Repeated' do
    assert Algorithms.greatest_number([101, 101, 10, 10]) == "1011011010"
  end
  test 'test from website' do
    assert Algorithms.greatest_number([56, 5, 50]) == "56550"
  end
   test 'another test from website' do
    assert Algorithms.greatest_number([420, 42, 423]) == "42423420"
  end