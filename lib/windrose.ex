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

  def left(:w) do
    :s
  end

  def left(:s) do
    :e
  end

  def left(:e) do
    :n
  end

  def left(:n) do
    :w
  end

  def right(:w) do
    :n
  end

  def right(:n) do
    :e
  end

  def right(:e) do
    :s
  end

  def right(:s) do
    :w
  end
end
