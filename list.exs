defmodule MyList do
  def mapsum([], _func), do: []

  def mapsum(list, func) do
    _sum(list, 0, func)
  end

  defp _sum([head | tail], value, func) do
    _sum(tail, func.(head) + value, func)
  end

  defp _sum([], value, _), do: value

  def max([head | tail]), do: _max(tail, head)

  defp _max([], maximum), do: maximum

  defp _max([head | tail], maximum) when head > maximum do
    _max(tail, head)
  end

  defp _max([_head | tail], maximum), do: _max(tail, maximum)

  def spam(from, to) when from > to do
    []
  end

  def spam(from, to) do
    [from | spam(from + 1, to)]
  end
end
