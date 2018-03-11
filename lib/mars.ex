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
  def explore(mx, my, rovers_pos)
      when is_integer(mx) and is_integer(my) and (mx > 0 and my > 0) do
    Enum.map(rovers_pos, fn [x, y, di, mv] -> Rover.navigate(x, y, di, mx, my, mv) end)
  end

  def explore(_, _, _), do: "(x, y) coordinates are integers and greater than 0."
end
