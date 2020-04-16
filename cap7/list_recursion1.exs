defmodule ListRecursion do
  def mapsum(list, func), do: _mapsum(list, 0, func)

  def _mapsum([], value, _func), do: value

  def _mapsum([head | tail], value, func) do
    _mapsum(tail, value + func.(head), func)
  end
end
