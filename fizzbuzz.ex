Stream.interval(20)
|> Stream.map(fn num -> num + 1 end)
|> Stream.map(fn num ->
  cond do
    rem(num, 15) === 0 ->
      "FizzBuzz"
    rem(num, 5) === 0 ->
      "Buzz"
    rem(num, 3) === 0 ->
      "Fizz"
    true -> num
  end end)
|> Stream.map(&IO.inspect(&1))
|> Enum.to_list