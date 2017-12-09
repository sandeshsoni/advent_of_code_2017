defmodule Two do


  def calculate do
    read_input_from_file
    |> convert into number

    # f
    # |> String.split("\n")
    # |> Enum.map fn(x) -> IO.puts x; String.split(x)
    # |> Enum.map(fn(ele) -> String.to_integer(ele) end) end
    # |> Enum.map fn(x) -> Enum.min_max(x) end

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
