File.read!("text.txt")
|> String.split("\n")
|> Enum.flat_map(&String.split/1)
|> Enum.reduce(%{}, fn word, map ->
  Map.update(map, word, 1, & &1 + 1)
end)
|> IO.inspect