defmodule Stack.Impl do
  def pop([_head | tail]), do: tail
  def push(current_stack, new_item), do: current_stack ++ [new_item]
end
