defmodule AdventOfCode.Day02Test do
  use ExUnit.Case

  import AdventOfCode.Day02

  @tag :skip
  test "part1" do
    assert part1('1,0,0,0,99') == '2,0,0,0,99'
    assert part1('2,3,0,3,99') == '2,3,0,6,99'
    assert part1('2,4,4,5,99,0') == '2,4,4,5,99,9801'
    assert part1('1,1,1,4,99,5,6,0,99') == '30,1,1,4,2,5,6,0,99'

  end

  @tag :skip
  test "part2" do
    input = nil
    result = part2(input)

    assert result
  end
end
