defmodule MarsTest do
  use ExUnit.Case
  doctest Mars

  defp to_list(str) do
    String.codepoints(str)
  end

  test "Test rovers on mars" do
    assert Mars.plateau(5, 5, [
             [1, 2, :n, to_list("lmlmlmlmm")],
             [3, 3, :e, to_list("mmrmmrmrrm")]
           ]) == [
             [1, 3, :n],
             [5, 1, :e]
           ]
  end
end
