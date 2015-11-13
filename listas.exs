defmodule Listas do

  # [head | tail] = [1,2,3,4]

  def suma( [ head | tail ] ) do
    _suma(tail, head)
    # suma([2,3,4], 1)
  end

  defp _suma([ head | tail ], acumulador) do
    _suma(tail, acumulador + head )
    # suma([3,4], 3)
    # suma([4], 6)
    # suma([], 10)
  end

  defp _suma([], acumulador) do
    acumulador
    # 10
  end

end

ExUnit.start                                # set up the test runner

defmodule ListasTest do
  use ExUnit.Case                          # use requires a module and sets up macros; will explore more later


  test 'prueba de la suma' do
    assert Listas.suma([1, 2, 3]) == 6
    #assert 1 + 1 == 3                      # Elixir is smart! No need for assert_equal, assert_gte, etc.
                                            # And we still get great failure messages, yipee!
                                          # 1) test_assert (MyTest)
                                            #    ** (ExUnit.ExpectationError)
                                            #                 expected: 2
                                            #      to be equal to (==): 3
  end


end

