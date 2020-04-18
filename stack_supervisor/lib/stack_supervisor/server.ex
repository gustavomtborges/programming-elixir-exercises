defmodule Stack.Server do
  use GenServer
  alias Stack.Impl

  # GenServer API
  def start_link(initial_stack) do
    GenServer.start_link(__MODULE__, initial_stack, name: __MODULE__)
  end

  def push(new_item) do
    GenServer.cast(__MODULE__, {:push, new_item})
  end

  def pop() do
    GenServer.call(__MODULE__, :pop)
  end

  # GenServer Implementation
  def init(initial_stack) do
    {:ok, initial_stack}
  end

  def handle_call(:pop, _from, current_stack) do
    {:reply, current_stack, Impl.pop(current_stack)}
  end

  def handle_cast({:push, new_item}, current_stack) do
    {:noreply, Impl.push(current_stack, new_item)}
  end

  def terminate(reason, state) do
    IO.inspect(reason)
    IO.inspect(state)
    IO.puts("Stack.Server terminating...")
  end
end
