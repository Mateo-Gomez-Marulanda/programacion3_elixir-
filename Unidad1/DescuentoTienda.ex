# programa para ingresar un dato real para calcular el descuento de una tienda

defmodule DatosReales do
  def main do
    valor_producto = "ingrese el valor del producto " |> Util.ingresar_entero(:entero)

    porcentaje_descuento = "ingrese el porcentaje del descuento " |> Util.ingresar_real(:real)

    valor_descuento = calcular_valor_descuento(valor_producto, porcentaje_descuento)
    valor_final = calcular_valor_final(valor_producto, valor_descuento)

    generar_mensaje(valor_descuento, valor_final)
    |> Util.mostrar_mensaje()
  end

  defp calcular_valor_descuento(valor_producto, porcentaje_descuento) do
    valor_producto * porcentaje_descuento
  end

  defp calcular_valor_final(valor_producto, valor_descuento) do
    valor_producto - valor_descuento
  end

  defp generar_mensaje(valor_descuento, valor_final) do
    valor_descuento = valor_descuento |> Float.round(1)
    valor_final = valor_final |> Float.round(1)
    "Valor de descuento de $#{valor_descuento} y el valor final $#{valor_final}"
  end
end

IO.puts(DatosReales.main())
