defmodule PhonecodelibTest do
  use ExUnit.Case
  doctest Phonecodelib

  test "read json file " do
    with {:ok, body} <- File.read("countries.json"),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end
end