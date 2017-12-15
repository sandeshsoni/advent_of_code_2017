defmodule One do
  require Integer

  # @doc
  # ```
  # 65  64  63  62  61  60  59  58  57
  # 66  37  36  35  34  33  32  31  56
  # 67  38  17  16  15  14  13  30  55
  # 68  39  18   5   4   3  12  29  54
  # 69  40  19   6 **1** 2  11  28  53
  # 70  41  20   7   8   9  10  27  52
  # 71  42  21  22  23  24  25  26  51
  # 72  43  44  45  46  47  48  49  50
  # 73  74  75  76  77  78  79  80  81
  # ```

  def solve(input) do
    # INPUT = 361527

    input
    |> locate_position
    |> nearest_distance_from_center

  end

  def locate_position(number) do
    { x, y } = calculate_coordinates_of(number)
  end

  defp calculate_coordinates_of(number) do
    ceil_odd = &if(Integer.is_odd(&1), do: &1, else: &1 + 1)

    big_numb = number
    |> :math.sqrt
    |> Float.ceil
    |> round
    |> ceil_odd.()

    distance_to_travel = big_numb*big_numb - number
    diameter = big_numb - 1
    radius   = div(diameter, 2)
    diff = Integer.mod(distance_to_travel, diameter)

    # IO.puts "Bottom right: #{ big_numb } :: #{}"
    # IO.puts "distance : #{ distance_to_travel }"
    # IO.puts "diameter : #{ diameter }"
    # IO.puts "difference : #{ diff }"

    pos = diameter - diff
    pos2 = radius - diff

    case div(distance_to_travel, diameter) do
      1 -> { pos2, radius }
      2 -> {- radius, pos2}
      3 -> {pos2, radius}
      4 -> {radius, pos2}
      _ -> {radius, radius}
    end
  end

  def nearest_distance_from_center({x,y}) do
    mod_of = &if(&1 > 0, do: &1, else: -1 * &1)
    mod_of.(x) + mod_of.(y)
  end

end
