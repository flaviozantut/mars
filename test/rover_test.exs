defmodule RoverTest do
  use ExUnit.Case
  doctest Rover

  test "Rover turn left north to west" do
    assert Rover.left(1, 2, :n) == [1, 2, :w]
  end

  test "Rover turn right west to north" do
    assert Rover.right(1, 2, :w) == [1, 2, :n]
  end

  test "Rover move to east" do
    assert Rover.move(3, 3, :e) == [4, 3, :e]
  end

  test "Rover instructions 1 2 n  lmlmlmlmm" do
    assert Rover.instructions(1, 2, :n, String.codepoints("lmlmlmlmm")) == [1, 3, :n]
  end

  test "Rover instructions 3 3 e mmrmmrmrrm" do
    assert Rover.instructions(3, 3, :e, String.codepoints("mmrmmrmrrm")) == [5, 1, :e]
  end
end
