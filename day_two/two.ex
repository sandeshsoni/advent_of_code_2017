defmodule Two do


  def calculate do
    # |> convert into number

    # f
    # |> String.split("\n")
    # |> Enum.map fn(x) -> IO.puts x; String.split(x)
    # |> Enum.map(fn(ele) -> String.to_integer(ele) end) end
    # |> Enum.map fn(x) -> Enum.min_max(x) end

    read_input_from_file
    |>String.trim
    |> String.split("\n")
    |> Enum.map(fn (str) -> String.split(str, "\t")
    |> Enum.map(fn(x) -> String.to_integer(x); end) end)
    |> Enum.reduce 0, fn(list, acc) -> {min, max} = Enum.min_max list; (max - min) +acc end
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
