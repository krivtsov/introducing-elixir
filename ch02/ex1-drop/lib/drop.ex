defmodule Drop do
  # import :math, only: [sqrt: 1]
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

  def fall_velocity(distance, gravity \\ 9.8) do
    import :math, only: [sqrt: 1]
    
    sqrt(2 * gravity * distance)
  end

end

