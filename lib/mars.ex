defmodule Mars do
  @moduledoc """
  Documentation for Mars.
  """

  @doc """
  Move rovers on mars plateau (stop on limits).
   ## Examples

      iex> Mars.plateau(5, 5, [[1, 2, :n, ["l", "m"]], [3, 3, :e, ["m", "m"]]])
      [[0, 2, :w], [5, 3, :e]]
  """
  def plateau(mx, my, rovers_pos) do
    Enum.map(rovers_pos, fn [x, y, di, mv] -> Rover.instructions(x, y, di, mx, my, mv) end)
  end
end
