defmodule Rover do
  @moduledoc """
  Rover to explore mars
  """
  @doc """
  Move rover to new position by set of instructions as string (stop on limits).

  ## Examples

      iex> Rover.navigate(3, 3, :e, 5, 5, "lm")
      [3, 4, :n]
  """
  def navigate(x, y, p, mx, my, move)
      when is_integer(x) and is_integer(y) and (x >= 0 and y >= 0) and is_integer(mx) and
             is_integer(my) and (mx > 0 and my > 0) do
    if String.match?(move, ~r/l|r|m/) do
      instructions(x, y, p, mx, my, String.codepoints(move))
    else
      "Invalid rover instructions"
    end
  end

  def navigate(_, _, _, _, _, _), do: "Invalid rover instructions"

  defp instructions(x, y, p, mx, my, [head | tail]) do
    [x, y, p] =
      case head do
        "l" -> left(x, y, p)
        "r" -> right(x, y, p)
        "m" -> move(x, y, p, mx, my)
      end

    instructions(x, y, p, mx, my, tail)
  end

  defp instructions(x, y, p, _, _, []) do
    [x, y, p]
  end

  defp left(x, y, point) do
    [x, y, Windrose.left(point)]
  end

  defp right(x, y, point) do
    [x, y, Windrose.right(point)]
  end

  defp move(x, y, :s, _, _) do
    [x, if(y > 0, do: y - 1, else: y), :s]
  end

  defp move(x, y, :e, max_x, _) do
    [if(x < max_x, do: x + 1, else: x), y, :e]
  end

  defp move(x, y, :n, _, max_y) do
    [x, if(y < max_y, do: y + 1, else: y), :n]
  end

  defp move(x, y, :w, _, _) do
    [if(x > 0, do: x - 1, else: x), y, :w]
  end
end
