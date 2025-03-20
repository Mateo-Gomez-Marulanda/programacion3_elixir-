# ejercicio palabras clave 19/03/2025
defmodule PalabrasClave do
  def main do

    # acceder al dato "tiempo"
    lista = [modo: :rapido, tiempo: 10, activo: true]
    IO.inspect(Keyword.get(lista, :tiempo))

    # cambiar el valor "nivel"
    [modo: :seguro, nivel: 3]
    |> Keyword.put(:nivel, 5)
    |> IO.inspect()

    # convertir de lista de palabras claves a map
    [nombre: "Pepito", edad: 30, ciudad: "Bogotá"]
    |> Enum.into(%{})
    |> IO.inspect()
  end
end

PalabrasClave.main()
