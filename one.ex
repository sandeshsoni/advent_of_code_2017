defmodule One do

  def calculate(input) do
    list = circular_digits_list(input)
    list -- Enum.dedup(list)
    |> Enum.reduce(0, fn(x, sum) -> x + sum end)
  end

  def calculate_two(input) do
    digits_list(input)
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
