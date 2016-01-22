defmodule GreaterNumber do
  
  def get(list) do
    # %{5 => "cinco", 4 => "cuatro"}
    # {"a", 4, [3, 4]}
    # [
        # 55,
        # 51,
        # ...
    #   {555, 55},
    #   {511, 51},
    #   {444, 4},
    #   {555, 5},
    #   {555, 555},
    #   {566, 56},
    #   {554, 554}
    # ]
    len = Enum.max(list) |> Integer.to_string |> String.length 
    norm = Enum.map(list, fn n ->
      sn = Integer.to_string n 
      first = sn[0]
      nn = String.ljust(sn, len, first) |> String.to_integer
      {nn, n}
    end)
    IO.inspect norm
  end

end

ExUnit.start                                # set up the test runner

defmodule ListasTest do
  use ExUnit.Case                          # use requires a module and sets up macros; will explore more later


  test 'prueba basica' do
    assert GreaterNumber.get([50, 2, 9, 1]) == 95021
  end
 
end
