defmodule RoverTest do
  use ExUnit.Case
  doctest Rover

  test "Rover turn left north to west" do
    assert Rover.navigate(1, 2, :n, 3, 3, "l") == [1, 2, :w]
  end

  test "Rover turn right west to north" do
    assert Rover.navigate(1, 2, :w, 3, 3, "r") == [1, 2, :n]
  end

  test "Rover move to east" do
    assert Rover.navigate(3, 3, :e, 5, 5, "m") == [4, 3, :e]
  end

  test "Rover move to south limit" do
    assert Rover.navigate(2, 1, :s, 5, 5, "m") == [2, 0, :s]
    assert Rover.navigate(2, 0, :s, 5, 5, "m") == [2, 0, :s]
  end

  test "Rover move to east limit" do
    assert Rover.navigate(4, 3, :e, 5, 5, "m") == [5, 3, :e]
    assert Rover.navigate(5, 3, :e, 5, 5, "m") == [5, 3, :e]
  end

  test "Rover move to north limit" do
    assert Rover.navigate(3, 4, :n, 5, 5, "m") == [3, 5, :n]
    assert Rover.navigate(3, 5, :n, 5, 5, "m") == [3, 5, :n]
  end

  test "Rover move to west limit" do
    assert Rover.navigate(1, 3, :w, 5, 5, "m") == [0, 3, :w]
    assert Rover.navigate(0, 3, :w, 5, 5, "m") == [0, 3, :w]
  end

  test "Rover navigate 1 2 n  lmlmlmlmm" do
    assert Rover.navigate(1, 2, :n, 5, 5, "lmlmlmlmm") == [1, 3, :n]
  end

  test "Rover instructions 3 3 e mmrmmrmrrm" do
    assert Rover.navigate(3, 3, :e, 5, 5, "mmrmmrmrrm") == [5, 1, :e]
  end

  test "Rover invalid instructions" do
    assert Rover.navigate(-1, 3, :e, 5, 5, "l") == "Invalid rover instructions"
  end
end
