defmodule Drop do
  import :math, only: [sqrt: 1]
  @moduledoc """
  Documentation for Drop.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Drop.hello()
      :world

  """
  @spec fall_velocity(number()) :: float()
  
  def hello do
    :world
  end

  # def fall_velocity(distance) do
  #   import :math, only: [sqrt: 1]
    
  #   sqrt(2 * 9.8 * distance)
  # end
  def fall_velocity(where) do
    {planemo, distance} = where
    fall_velocity(planemo, distance) 
  end

  defp fall_velocity(:earth, distance) do
    sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
    sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
    sqrt(2 * 3.71 * distance)
  end

  def fall_velocity_first(distance, gravity \\ 9.8) when distance >= 0 do
    import :math, only: [sqrt: 1]
    sqrt(2 * gravity * distance)
  end

  def fall_velocity3({planemo, distance}) when distance >= 0 do
    gravity = case planemo do
      :earth  -> 9.8
      :moon   -> 1.6
      :mars   -> 3.71
    end
    velocity = sqrt(2 * gravity * distance)

    cond do
      velocity == 0                    -> :stable
      velocity < 5                     -> :slow
      velocity >= 5 and velocity < 10  -> :moving
      velocity >= 10 and velocity < 20 -> :moving
      velocity >= 20                   -> :speedy
    end
  end

end

