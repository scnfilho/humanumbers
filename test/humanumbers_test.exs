defmodule HumanumbersTest do
  use ExUnit.Case
  doctest Humanumbers

  test "0 returns 'zero'" do
    assert Humanumbers.humanize(0) == "zero"
  end

  test "1 returns 'one'" do
    assert Humanumbers.humanize(1) == "one"
  end
end
