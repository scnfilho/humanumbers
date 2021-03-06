defmodule Humanumbers do
  def humanize(0), do: "zero"
  def humanize(1), do: "one"
  def humanize(2), do: "two"
  def humanize(3), do: "three"
  def humanize(4), do: "four"
  def humanize(5), do: "five"
  def humanize(6), do: "six"
  def humanize(7), do: "seven"
  def humanize(8), do: "eight"
  def humanize(9), do: "nine"
  def humanize(10), do: "ten"
  def humanize(11), do: "eleven"
  def humanize(12), do: "twelve"
  def humanize(13), do: "thirteen"
  def humanize(14), do: "fourteen"
  def humanize(15), do: "fifteen"
  def humanize(16), do: "sixteen"
  def humanize(17), do: "seventeen"
  def humanize(18), do: "eighteen"
  def humanize(19), do: "nineteen"
  def humanize(20), do: "twenty"
  def humanize(30), do: "thirty"
  def humanize(40), do: "forty"
  def humanize(50), do: "fifty"
  def humanize(60), do: "sixty"
  def humanize(70), do: "seventy"
  def humanize(80), do: "eighty"
  def humanize(90), do: "ninety"

  def humanize(number) when number < 100 do
    tens = div(number, 10) * 10
    units = rem(number, 10)
    "#{humanize(tens)}-#{humanize(units)}"
  end

  def humanize(number) when number < 1000 do
    hundreds = div(number, 100)
    rest = rem(number, 100)
    humanize_hundred(hundreds, rest)
  end

  def humanize(number) do
    order = number |> :math.log10 |> Float.floor |> round |> div(3)
    order_base = :math.pow(10, order * 3) |> Float.floor |> round
    case human_order(order) do
      :error -> to_string(number)
      human_order ->
        human_big_number(div(number, order_base), rem(number, order_base), human_order)
    end
  end

  defp humanize_hundred(hundreds, 0), do: "#{humanize(hundreds)} hundred"

  defp humanize_hundred(hundreds, rest) do
    "#{humanize(hundreds)} hundred #{humanize(rest)}"
  end

  defp human_big_number(big_part, 0, human_order) do
    "#{humanize(big_part)} #{human_order}"
  end

  defp human_big_number(big_part, small_part, human_order) do
    "#{humanize(big_part)} #{human_order}, #{humanize(small_part)}"
  end

  defp human_order(1), do: "thousand"
  defp human_order(2), do: "million"
  defp human_order(_), do: :error
end
