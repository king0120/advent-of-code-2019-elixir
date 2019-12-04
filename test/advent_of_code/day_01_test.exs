defmodule AdventOfCode.Day01Test do
  use ExUnit.Case

  import AdventOfCode.Day01

  test "part1" do
    assert part1(12) == 2
    assert part1(14) == 2
    assert part1(1969) == 654
    assert part1(100756) == 33583
  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
