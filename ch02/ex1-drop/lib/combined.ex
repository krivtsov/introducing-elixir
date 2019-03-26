defmodule Combined do
  import Convert

  def height_to_mph(meters) do
    # Convert.mps_to_mph(Drop.fall_velocity(meters))
    Drop.fall_velocity(meters) 
    |> mps_to_mph
  end

end

