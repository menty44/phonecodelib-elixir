defmodule Phonecodelib do
  @moduledoc """
  Documentation for `Phonecodelib`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Phonecodelib.hello()
      :world

  """
  def hello do
    :world
  end

  def checker(incoming) do
    IO.puts incoming
#    my_test =
#      with {:ok, body} <- File.read("countries.json"),
#         {:ok, json} <- Poison.decode(body), do: {:ok, json}
    {a, b } = get_json
     b
     |> get_in( [Access.filter(&(&1["iso"] === String.upcase(incoming)))])
  end

  def get_json() do
    with {:ok, body} <- File.read("countries.json"),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end

end
