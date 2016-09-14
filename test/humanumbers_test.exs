defmodule HumanumbersTest do
  use ExUnit.Case
  doctest Humanumbers

  test "0 returns 'zero'" do
    assert Humanumbers.humanize(0) == "zero"
  end

  test "1 returns 'one'" do
    assert Humanumbers.humanize(1) == "one"
  end

  test "21 returns 'twenty-one'" do
    assert Humanumbers.humanize(21) == "twenty-one"
  end

  test "22 returns 'twenty-two'" do
    assert Humanumbers.humanize(22) == "twenty-two"
  end
end
