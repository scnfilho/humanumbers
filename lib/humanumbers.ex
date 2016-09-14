defmodule Humanumbers do
  def humanize(number) do
    if number == 0 do
      "zero"
    else
      "one"
    end
  end
end
