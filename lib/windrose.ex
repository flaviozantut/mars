defmodule Windrose do
  @moduledoc """
  Compass rose
  """

  @doc """
  Get Windrose points

  ## Examples

      iex> Windrose.points
      [:s, :e, :n, :w]

  """
  def points do
    [:s, :e, :n, :w]
  end

  @doc """
  Turn to left

  ## Examples
      iex> Windrose.left(:w)
      :s

  """
  def left(from) do
    case from do
      :w -> :s
      :s -> :e
      :e -> :n
      :n -> :w
    end
  end

  @doc """
  Turn to right

  ## Examples
      iex> Windrose.right(:n)
      :e
  """
  def right(from) do
    case from do
      :w -> :n
      :n -> :e
      :e -> :s
      :s -> :w
    end
  end
end
