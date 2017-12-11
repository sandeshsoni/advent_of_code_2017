defmodule Two do


  def calculate do
    # |> convert into number

    # f
    # |> String.split("\n")
    # |> Enum.map fn(x) -> IO.puts x; String.split(x)
    # |> Enum.map(fn(ele) -> String.to_integer(ele) end) end
    # |> Enum.map fn(x) -> Enum.min_max(x) end

    # remove_whitespace
    # split to convert array of strings
    # Iterate through each sub_list and Convert each String into integer
    # get_sum_of_min_max_of_each_list and add_to_accumulator
    # return the sum_of_all_min_max

    read_input_from_file
    |>String.trim
    |> String.split("\n")
    |> Enum.map(fn (str) -> String.split(str, "\t")
    |> Enum.map(fn(x) -> String.to_integer(x); end) end)
    |> Enum.reduce 0,
    fn(list, acc) -> {min, max} = Enum.min_max list; (max - min) + acc end
  end

  def calculate_two do
    # instead of min_max, use sum_of_evenly_divisible_pair

    read_input_from_file
    |>String.trim
    |> String.split("\n")
    |> Enum.map(fn (str) -> String.split(str, "\t")
    |> Enum.map(fn(x) -> String.to_integer(x); end) end)
    |> Enum.reduce 0,
    fn(list, acc) -> result_of_evenly_divisible_pair(list) + acc end
  end

  defp evenly_divisible_pair list do
    (for i <- list, j <- list, do: {i, j})
    |> Enum.find(fn ({i, j}) -> i != j and (rem(i, j) == 0 or rem(j, i) == 0)
    end)
  end

  def result_of_evenly_divisible_pair(list) do
    {n1, n2} = evenly_divisible_pair list
    case n1 > n2 do
      true -> div(n1, n2)
      false -> div(n2, n1)
    end
  end

  def calculate_two do
  end

  # read input from file
  defp read_input_from_file do
    {:ok, f} = File.read("two_input.txt")
    f
  end

  defp convert_into_number(input) do
    # input is string or stream.
    # tabs and new lines
    []
  end

end
