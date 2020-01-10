defmodule Chop do
  def guess(actual, range) do
    _..high = range
    tryToGuess(actual, high, div(high, 2)..high)
  end

  def tryToGuess(actual, guessNumber, range) when actual == guessNumber, do: actual

  def tryToGuess(actual, guessNumber, range) when actual < guessNumber do
    low..high = range
    IO.puts("#{low}..#{high}")
    IO.puts("Is it #{low}")
  end

  def tryToGuess(actual, guessNumber, range) when actual > guessNumber do
  end
end
