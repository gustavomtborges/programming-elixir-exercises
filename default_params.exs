defmodule Chop do
  def guess(actualNumber, rangeMin..rangeMax) when div(rangeMin + rangeMax, 2) > actualNumber do
    IO.puts("It is #{middle(rangeMin, rangeMax)}")
    guess(actualNumber, rangeMin..middle(rangeMin, rangeMax))
  end

  def guess(actualNumber, rangeMin..rangeMax) when div(rangeMin + rangeMax, 2) < actualNumber do
    IO.puts("It is #{middle(rangeMin, rangeMax)}")
    guess(actualNumber, middle(rangeMin, rangeMax)..rangeMax)
  end

  def guess(_actualNumber, rangeMin..rangeMax), do: IO.puts(middle(rangeMin, rangeMax))
  def middle(min, max), do: div(min + max, 2)
end

# 273
IO.puts(Chop.guess(273, 1..1000))
