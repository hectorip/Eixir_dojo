defmodule NumTest do
  def test(n) when (n < 0), do: "El número es negativo"
  def test(n) when (n > 0), do: "El número es positivo"
  def test(0), do: "El número no es positivo ni negativo sino todo lo contrario"
end
