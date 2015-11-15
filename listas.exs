defmodule Listas do

  # [head | tail] = [1,2,3,4]
  def suma([]) do
    0
  end
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
  end
  
  test 'prueba vacía' do
    assert Listas.suma([]) == 0
  end

end

