defmodule PhonecodelibTest do
  use ExUnit.Case
  doctest Phonecodelib

  test "greets the world" do
    assert Phonecodelib.hello() == :world
  end

  test "read json file " do
    with {:ok, body} <- File.read(filename),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end
end
