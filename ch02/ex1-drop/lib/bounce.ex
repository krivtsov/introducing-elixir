defmodule Bounce do
  def report do
    receive do
      # msg -> IO.puts("Received #{count}: #{msg}")
      x -> IO.puts("Divided to #{x/2}")
      report()
      # count + 1
    end
    # report(new_count)
  end
end