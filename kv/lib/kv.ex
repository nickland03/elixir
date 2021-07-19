defmodule KV do
  @spec isNumberBiggerThan(number, number) :: boolean
  def isNumberBiggerThan(m, n) do
    m > n
  end

  @spec exponentialList(list, number) :: list
  def exponentialList(list, exponent) do
    Enum.map(list, fn x -> :math.pow(x, exponent) |> round end)
  end
end
