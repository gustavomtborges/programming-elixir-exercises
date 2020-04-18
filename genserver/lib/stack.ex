defmodule Stack.Server do
  use GenServer

  def init(initial_stack) do
    {:ok, initial_stack}
  end

  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  def handle_cast({:push, new_value}, current_stack) do
    {:noreply, current_stack ++ [new_value]}
  end
end
