defmodule Fact do

  def factorial(n) when n > 1 do
    result = n * factorial(n - 1)
    result
  end

  def factorial(n) when n <= 1 do
    1
  end

  def factorial2(n) do 
    factorial2(1, n, 1)
  end

  defp factorial2(current, n, result) when current <= n do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}.")
    factorial2(current + 1, n, new_result)
  end

  defp factorial2(_current, _n, result) do
    IO.puts("finished!")
    result
  end

end