fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts(fizz_buzz.(0, 0, 2))
IO.puts(fizz_buzz.(0, 1, 2))
IO.puts(fizz_buzz.(1, 0, 2))
IO.puts(fizz_buzz.(1, 2, 3))

fizz_rem = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end
IO.puts(fizz_rem.(10))
IO.puts(fizz_rem.(11))
IO.puts(fizz_rem.(12))
IO.puts(fizz_rem.(13))
IO.puts(fizz_rem.(14))
IO.puts(fizz_rem.(15))
IO.puts(fizz_rem.(16))
