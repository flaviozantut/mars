defmodule Mars do
  @moduledoc """
  Mars explorer
  """

  @doc """

  Move rovers on mars (stop on limits).

  ## Examples

      iex> Mars.explore(5, 5, [[1, 2, :n, "lm"], [3, 3, :e, "mm"]])
      [[0, 2, :w], [5, 3, :e]]
  """
  def explore(mx, my, rovers_pos) do
    Enum.map(rovers_pos, fn [x, y, di, mv] -> Rover.instructions(x, y, di, mx, my, mv) end)
  end
end
