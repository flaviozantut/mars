defmodule MarsTest do
  use ExUnit.Case
  doctest Mars

  test "Test rovers on mars" do
    assert Mars.explore(5, 5, [
             [1, 2, :n, "lmlmlmlmm"],
             [3, 3, :e, "mmrmmrmrrm"]
           ]) == [
             [1, 3, :n],
             [5, 1, :e]
           ]
  end
end
