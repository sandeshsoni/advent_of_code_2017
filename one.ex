defmodule One do

  # Iteration two, try Stream.cycle
  def calculate(input) do
    list = circular_digits_list(input)
    list -- Enum.dedup(list)
    |> Enum.reduce(0, fn(x, sum) -> x + sum end)
  end

  def calculate_two(input) do
    list = digits_list(input)
    half = div(Enum.count(list), 2)
    l_w_i = Enum.with_index(Enum.take list, half)
    Enum.reduce(l_w_i, 0,
    fn({k,i}, acc) ->
      # IO.puts "----"
      #IO.puts "acc ==>> #{ acc }"
      #IO.puts "case =>> #{Enum.at(list, i + half)}"
      #IO.puts "k ==>> #{ k }"
      #IO.puts "acc + k + k =>> #{(acc + k + k)}"
      case Enum.at(list,i+half) do
        ^k  ->
          # IO.puts "match"
          (acc + k + k)
        _ ->
          # IO.puts "NOT match"
          acc
      end
    end
    )
  end

  def circular_digits_list(str) do
    # Add first item to last as circular
    list = digits_list(str)
    [List.last(list) | list]
  end

  def digits_list(str) do
    String.to_integer(str)
    |> Integer.digits
  end

end
