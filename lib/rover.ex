defmodule Rover do
  @moduledoc """
  Rover to explore mars
  """

  def left(x, y, point) do
    [x, y, Windrose.left(point)]
  end

  def right(x, y, point) do
    [x, y, Windrose.right(point)]
  end

  def move(x, y, :s) do
    [x, y - 1, :s]
  end

  def move(x, y, :e) do
    [x + 1, y, :e]
  end

  def move(x, y, :n) do
    [x, y + 1, :n]
  end

  def move(x, y, :w) do
    [x - 1, y, :w]
  end

  def instructions(x, y, p, [head | tail]) do
    [x, y, p] =
      case head do
        "l" -> Rover.left(x, y, p)
        "r" -> Rover.right(x, y, p)
        "m" -> Rover.move(x, y, p)
      end

    Rover.instructions(x, y, p, tail)
  end

  def instructions(x, y, p, []) do
    [x, y, p]
  end
end
