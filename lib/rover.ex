defmodule Rover do
  @moduledoc """
  Rover to explore mars
  """

  def left(x, y, point) do
    [x: x, y: y, p: Windrose.left(point)]
  end

  def right(x, y, point) do
    [x: x, y: y, p: Windrose.right(point)]
  end

  def move(x, y, :s) do
    [x: x, y: y - 1, p: :s]
  end

  def move(x, y, :e) do
    [x: x + 1, y: y, p: :e]
  end

  def move(x, y, :n) do
    [x: x, y: y + 1, p: :n]
  end

  def move(x, y, :w) do
    [x: x - 1, y: y, p: :n]
  end
end
