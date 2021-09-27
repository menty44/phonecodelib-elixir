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

  def filter_by_iso(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["iso"] === String.upcase(incoming)))])
  end

  def filter_by_iso3(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["iso3"] === String.upcase(incoming)))])
  end

  def filter_by_name(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["name"] === String.upcase(incoming)))])
  end

  def filter_by_phonecode(incoming) do
    IO.puts incoming
    {_a, b } = get_json()
     b
     |> get_in( [Access.filter(&(&1["phonecode"] === incoming))])
  end

  def get_json() do
    with {:ok, body} <- File.read("countries.json"),
         {:ok, json} <- Poison.decode(body), do: {:ok, json}
  end

end
