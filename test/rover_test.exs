defmodule RoverTest do
  use ExUnit.Case
  doctest Rover

  defp to_list(str) do
    String.codepoints(str)
  end

  test "Rover turn left north to west" do
    assert Rover.left(1, 2, :n) == [1, 2, :w]
  end

  test "Rover turn right west to north" do
    assert Rover.right(1, 2, :w) == [1, 2, :n]
  end

  test "Rover move to east" do
    assert Rover.move(3, 3, :e, 5, 5) == [4, 3, :e]
  end

  test "Rover move to south limit" do
    assert Rover.move(2, 1, :s, 5, 5) == [2, 0, :s]
    assert Rover.move(2, 0, :s, 5, 5) == [2, 0, :s]
  end

  test "Rover move to east limit" do
    assert Rover.move(4, 3, :e, 5, 5) == [5, 3, :e]
    assert Rover.move(5, 3, :e, 5, 5) == [5, 3, :e]
  end

  test "Rover move to north limit" do
    assert Rover.move(3, 4, :n, 5, 5) == [3, 5, :n]
    assert Rover.move(3, 5, :n, 5, 5) == [3, 5, :n]
  end

  test "Rover move to west limit" do
    assert Rover.move(1, 3, :w, 5, 5) == [0, 3, :w]
    assert Rover.move(0, 3, :w, 5, 5) == [0, 3, :w]
  end

  test "Rover instructions 1 2 n  lmlmlmlmm" do
    assert Rover.instructions(1, 2, :n, 5, 5, to_list("lmlmlmlmm")) == [1, 3, :n]
  end

  test "Rover instructions 3 3 e mmrmmrmrrm" do
    assert Rover.instructions(3, 3, :e, 5, 5, to_list("mmrmmrmrrm")) == [5, 1, :e]
  end
end
