defmodule RoverTest do
  use ExUnit.Case
  doctest Rover

  test "Rover turn left north to west" do
    assert Rover.left(1, 2, :n) == [x: 1, y: 2, p: :w]
  end

  test "Rover turn right west to north" do
    assert Rover.right(1, 2, :w) == [x: 1, y: 2, p: :n]
  end

  test "Rover move to east" do
    assert Rover.move(3, 3, :e) == [x: 4, y: 3, p: :e]
  end
end
