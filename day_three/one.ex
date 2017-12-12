defmodule One do
  require Integer

  # @doc
  # ```
  # 64  63  62  61  60  59  58  57
  # 37  36  35  34  33  32  31  56
  # 38  17  16  15  14  13  30  55
  # 39  18   5   4   3  12  29  54
  # 40  19   6   1   2  11  28  53
  # 41  20   7   8   9  10  27  52
  # 42  21  22  23  24  25  26  51
  # 43  44  45  46  47  48  49  50
  # ```

  def solve do
    # INPUT = 361527

   IO.inspect locate_position(15)
  end

  def locate_position(number) do
    { x, y } = calculate_coordinates_of(number)
  end

  defp calculate_coordinates_of(number) do
    # 1 -> 0,0
    # 2 -> 1, 0
    # 3 -> 1, 1
    # 4 -> 0, 1
    # 5 -> -1, 1
    # 6 -> -1, 0
    # 7 -> -1, -1
    # 8 -> 0, -1
    # 9 -> 1, -1
    # 10 -> 2, -1

    # 1024
    #


    # get square root of number.
    # its coordinates are {odd_no, -odd_no}
    # keep subtracting and updating coordinates till the remainder becomes zero

    # erlang math lib
    # get closest odd_number bottomRight boundry

    ceil_odd = &if(Integer.is_odd(&1), do: &1, else: &1 + 1)

    # ceil_odd = fn(num) ->
    #   if Integer.is_odd(num), do: num, else: num + 1
    # end
    # fun = &if(Integer.is_odd(&1), do: "odd", else: "even")

    big_numb = number
    |> :math.sqrt
    |> Float.ceil
    |> round
    |> ceil_odd.()

    IO.puts "Bottom right: #{ big_numb }"

    distance = big_numb*big_numb - number

    IO.puts "distance : #{ distance }"

    # now calculate distance
    # iterate till, keep subtracting distance and changing coordinates

    # ! direct distance not possible as direction is spiral
    # get axis and coordinate and distance is |x| + |y|


    # xxxxx
    # sq = :math.sqrt(44) |> round
    # rem = sq * sq - 44
    # Integer.mod(rem, div(sq,2))
    # sum
    # incorrect. maybe coordinates

    {5, 6}
  end

  defp iterate_to_num({x,y}, big_numb, input_numb, diameter) do
    # 4 cases
    # bottom, right, top, left.
    # lies is any of above, or any corners
  end

end
