defmodule DivideEtImpera do
  @moduledoc """
  Implements Divide et Impera algorithm
  """

  @spec search([integer()], integer()) :: position :: integer() | :not_found
  def search(list, target) when is_list(list) and is_number(target) do
    do_search(list, target, 0, length(list) - 1)
  end

  defp do_search(list, target, low, high) when low <= high do
    middle = div(low + high, 2)

    case Enum.at(list, middle) do
      value when value == target -> middle
      value when value > target -> do_search(list, target, low, middle - 1)
      _ -> do_search(list, target, middle + 1, high)
    end
  end

  defp do_search(_, _target, _low, _high), do: :not_found
end
