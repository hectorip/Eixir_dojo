defmodule Functional do
  # This is left to rigth reduction
  def reduce([last], f) do
    last
  end
  def reduce([head | tail], f) do
    f.(head, reduce(tail, f))
  end

  # We need to define right to left reduction

end


ExUnit.start                                # set up the test runner

defmodule FunctionalTest do
  use ExUnit.Case                          # use requires a module and sets up macros; will explore more later

  test 'prueba de reduce con funcion suma' do
    assert Functional.reduce([1, 2, 3], &(&1 + &2)) == 6
  end

  test 'prueba de reduce con funcion multiplicacion' do
    assert Functional.reduce([1, 2, 3], &(&1 * &2)) == 6
  end
  
end