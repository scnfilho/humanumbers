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

  test "30 returns 'thirty'" do
    assert Humanumbers.humanize(30) == "thirty"
  end

  test "31 returns 'thirty-one'" do
    assert Humanumbers.humanize(31) == "thirty-one"
  end

  test "100 returns 'one hundred'" do
    assert Humanumbers.humanize(100) == "one hundred"
  end

  test "101 returns 'one hundred one'" do
    assert Humanumbers.humanize(101) == "one hundred one"
  end

  test "1_234_567 returns accordingly" do
    assert Humanumbers.humanize(1_234_567) == "one million, two hundred thirty-four thousand, five hundred sixty-seven"
  end

  test "very big number ignores humanization" do
    assert Humanumbers.humanize(1_000_000_000_000_000_000) == "1000000000000000000"
  end
end
