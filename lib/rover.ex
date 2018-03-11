defmodule Rover do
  @moduledoc """
  Rover to explore mars
  """

  @doc """
  Turn rover to left
  """
  def left(x, y, point) do
    [x, y, Windrose.left(point)]
  end

  @doc """
  Turn rover to right
  """
  def right(x, y, point) do
    [x, y, Windrose.right(point)]
  end

  @doc """
  Move rover one position on y angle to south (stop on limit).
  """
  def move(x, y, :s, _, _) do
    [x, if(y > 0, do: y - 1, else: y), :s]
  end

  @doc """
  Move rover one position on x angle to east (stop on limit).
  """
  def move(x, y, :e, max_x, _) do
    [if(x < max_x, do: x + 1, else: x), y, :e]
  end

  @doc """
  Move rover one position on y angle to north (stop on limit).
  """
  def move(x, y, :n, _, max_y) do
    [x, if(y < max_y, do: y + 1, else: y), :n]
  end

  @doc """
  Move rover one position on x angle to west (stop on limit).
  """
  def move(x, y, :w, _, _) do
    [if(x > 0, do: x - 1, else: x), y, :w]
  end

  @doc """
  Move rover to new position by set of instructions (stop on limits).
  ## Examples

      iex> Rover.instructions(3, 3, :e, 5, 5, ["l", "m"])
      [3, 4, :n]
  """
  def instructions(x, y, p, mx, my, [head | tail]) do
    [x, y, p] =
      case head do
        "l" -> Rover.left(x, y, p)
        "r" -> Rover.right(x, y, p)
        "m" -> Rover.move(x, y, p, mx, my)
      end

    Rover.instructions(x, y, p, mx, my, tail)
  end

  def instructions(x, y, p, _, _, []) do
    [x, y, p]
  end
end
