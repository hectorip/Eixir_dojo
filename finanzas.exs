defmodule Finanzas do

  defp calcaular_iva(precio_con_iva, tasa \\ 1.16, _descuento \\ 10) do
    precio_sin_iva = precio_con_iva / tasa
    { (precio_con_iva - precio_sin_iva), precio_sin_iva }
  end

  def desglose(precio_total) do
    {iva, precio_sin_iva} = calcaular_iva(precio_total)
    # precio_sin_iva, iva, precio_total
    :io.format("El desglose del precio es ~nSubotal: ~f;~nIVA: ~f;~nTotal: ~f", [precio_sin_iva, iva, precio_total*1.0])  
  end 
end