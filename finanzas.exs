defmodule Finanzas do

  defp calcaular_iva(precio_con_iva, tasa \\ 1.16, _descuento \\ 10) do
    precio_sin_iva = precio_con_iva / tasa
    { (precio_con_iva - precio_sin_iva), precio_sin_iva }
  end

  def desglose(precio_total) do
    # precio_sin_iva, iva, precio_total
    {}
  end

  defp precio_sin_va(precio_total, tasa \\ 16) do

  end
 
end