prefix = fn prefix ->
  fn name -> prefix <> " " <> name end
end

IO.puts(prefix.("Mrs").("Gustavo"))
IO.puts(prefix.("Elixir").("Rocks"))
