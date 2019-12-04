defmodule AdventOfCode.Day02 do
  #
  def part1(args, start \\ 0) do
    opcode_arr =
      String.split(args, ",")
      |> Enum.map(&String.to_integer/1)

    if Enum.at(opcode_arr, start) == 99 do
      args
    else
      [action, input1, input2, output | _tail] = Enum.slice(opcode_arr, start..-1)
      new_opcode = calc_opcode(action, opcode_arr, input1, input2, output)
      part1(new_opcode, start + 4)
    end
  end

  def calc_opcode(1, arr, input1, input2, output) do
    val = Enum.at(arr, input1) + Enum.at(arr, input2)
    List.replace_at(arr, output, val) |> Enum.join(",")
  end

  def calc_opcode(2, arr, input1, input2, output) do
    val = Enum.at(arr, input1) * Enum.at(arr, input2)
    List.replace_at(arr, output, val) |> Enum.join(",")
  end

  # def part2(args) do
  # end
end
