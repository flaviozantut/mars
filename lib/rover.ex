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

  def move(x, y, :s, _, _) do
    [x, if(y > 0, do: y - 1, else: y), :s]
  end

  def move(x, y, :e, maxX, _) do
    [if(x < maxX, do: x + 1, else: x), y, :e]
  end

  def move(x, y, :n, _, maxY) do
    [x, if(y < maxY, do: y + 1, else: y), :n]
  end

  def move(x, y, :w, _, _) do
    [if(x > 0, do: x - 1, else: x), y, :w]
  end

  def instructions(x, y, p, maxX, maxY, [head | tail]) do
    [x, y, p] =
      case head do
        "l" -> Rover.left(x, y, p)
        "r" -> Rover.right(x, y, p)
        "m" -> Rover.move(x, y, p, maxX, maxY)
      end

    Rover.instructions(x, y, p, maxX, maxY, tail)
  end

  def instructions(x, y, p, _, _, []) do
    [x, y, p]
  end
end
