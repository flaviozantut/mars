defmodule WindroseTest do
  use ExUnit.Case
  doctest Windrose

  test "Windrose points" do
    assert Windrose.points() == [:s, :e, :n, :w]
  end

  test "Windrose left north to west" do
    assert Windrose.left(:n) == :w
  end

  test "Windrose left west to south" do
    assert Windrose.left(:w) == :s
  end

  test "Windrose left south to east" do
    assert Windrose.left(:s) == :e
  end

  test "Windrose left east to north" do
    assert Windrose.left(:e) == :n
  end

  test "Windrose right west to north" do
    assert Windrose.right(:w) == :n
  end

  test "Windrose right north to east" do
    assert Windrose.right(:n) == :e
  end

  test "Windrose right east to south" do
    assert Windrose.right(:e) == :s
  end

  test "Windrose right south to west" do
    assert Windrose.right(:s) == :w
  end
end
