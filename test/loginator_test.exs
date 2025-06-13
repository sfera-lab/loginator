defmodule LoginatorTest do
  use ExUnit.Case
  doctest Loginator

  test "greets the world" do
    assert Loginator.hello() == :world
  end
end
