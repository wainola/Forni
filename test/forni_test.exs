defmodule ForniTest do
  use ExUnit.Case
  doctest Forni

  test "greets the world" do
    assert Forni.hello() == :world
  end
end
